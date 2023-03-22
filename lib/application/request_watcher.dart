import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:useless_trivia/application/request_event.dart';
import 'package:useless_trivia/application/request_state.dart';

import '../domain/i_wikipedia_client.dart';
import '../repository/database/database.dart';
import 'database_event.dart';
import 'database_watcher.dart';

@singleton
class RequestWatcher extends Bloc<RequestEvent, RequestState> {
  final IWikipediaRepository _wc;
  final MyDatabase database;
  final DatabaseWatcher watcher;

  RequestWatcher(this._wc, this.database, this.watcher) : super(IsIdle()) {
    on<RequestStringTerm>((event, emit) async {
        emit(InProgress());
        final received = await _wc.getTriviaByString(event.searchTerm);
        received.fold(
                (failure) => {
                  emit(HasFailed(failure.message))
                },
                (trivia) async => {
                  emit(IsSuccessful(trivia)),
                  database.triviaDao.insertTrivia(trivia),
                  watcher.add(Inserted(trivia))
                }
        );
    });
  }
}