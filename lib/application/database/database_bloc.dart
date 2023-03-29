import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:useless_trivia/infrastructure/database/dao/trivia_dao.dart';
import '../../domain/database/i_trivia_dao.dart';
import '../../infrastructure/database/database.dart';
import 'database_event.dart';
import 'database_state.dart';

@singleton
class DatabaseBloc extends Bloc<DatabaseEvent, DatabaseState> {
  final ITriviaDao triviaDao;

  DatabaseBloc(this.triviaDao) : super(const IsLoading()) {

    on<AskForCurrentEntries> ((event, emit) async {
      List<Trivia> current = await triviaDao.selectAllTrivia();
      if (current.isEmpty) {
        emit(const IsEmpty());
      } else {
        current.sort((a, b) => a.searchTerm.compareTo(b.searchTerm));
        emit(HasEntries(current));
      }
    });

    on<Inserted>((event, emit) async {
      if (state is HasEntries) {
        final currentEntries = [...(state as HasEntries).entries, event.newEntry];
        currentEntries.sort((a, b) => a.searchTerm.compareTo(b.searchTerm));
        emit(DatabaseState.hasEntries(currentEntries));
      } else {
        emit(DatabaseState.hasEntries([event.newEntry]));
      }
    });

    on<Deleted>((event, emit) async {
      List<Trivia> currentList = [...(state as HasEntries).entries];
      currentList.removeWhere((element) => element.searchTerm == event.title);
      if (currentList.isEmpty) {
        emit(const DatabaseState.isEmpty());
      } else {
        emit(DatabaseState.hasEntries(currentList));
      }
    });
  }
}
