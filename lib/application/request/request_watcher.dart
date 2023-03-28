import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:useless_trivia/application/request/request_event.dart';
import 'package:useless_trivia/application/request/request_state.dart';

import '../../domain/wikipedia/i_wikipedia_repository.dart';
import '../../infrastructure/database/database.dart';
import '../database/database_event.dart';
import '../database/database_watcher.dart';

@singleton
class RequestWatcher extends Bloc<RequestEvent, RequestState> {
  final IWikipediaRepository _wikiRepository;
  final AppDatabase database;
  final DatabaseWatcher watcher;

  RequestWatcher(this._wikiRepository, this.database, this.watcher) : super(const IsIdle()) {

    on<RequestSummary>((event, emit) async {
      emit(const InProgress());
      final currentEntries = await database.triviaDao.findTrivia(event.searchTerm);
      if (currentEntries.isEmpty) {
        final received = await _wikiRepository.getTriviaByString(event.searchTerm);
        received.fold(
            (failure) => emit(HasFailed(failure.message)),
            (trivia) async => {
                  emit(IsSuccessful(trivia)),
                  database.triviaDao.insertTrivia(trivia),
                  watcher.add(Inserted(trivia))
                });
      } else {
        emit(HasFailed("Dit artikel is al opgeslagen"));
      }
    });

    on<RequestLead>((event, emit) async {
      emit(const InProgress());
      final received =
          await _wikiRepository.getMobileSectionLeadByString(event.searchTerm);
      received.fold(
        (failure) => emit(HasFailed(failure.message)),
        (trivia) async => emit(HasSuccessfullyDownloaded(trivia)),
      );
    });

    on<RequestDeletion>((event, emit) async {
      emit(const InProgress());
      database.triviaDao.deleteTriviaBySearchTerm(event.titleOfItemToBeDeleted);
      emit(const IsSuccesfullyDeleted());
      watcher.add(Deleted(event.titleOfItemToBeDeleted));
    });
  }
}
