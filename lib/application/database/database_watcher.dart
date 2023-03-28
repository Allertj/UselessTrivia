import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../infrastructure/database/database.dart';
import 'database_event.dart';
import 'database_state.dart';

@singleton
class DatabaseWatcher extends Bloc<DatabaseEvent, DatabaseState> {
  final AppDatabase _database;

  DatabaseWatcher(this._database) : super(const IsLoading()) {

    on<AskForCurrentEntries> ((event, emit) async {
      List<Trivia> current = await _database.triviaDao.selectAllTrivia();
      if (current.isEmpty) {
        emit(const IsEmpty());
      } else {
        emit(HasEntries(current));
      }
    });

    on<Inserted>((event, emit) async {
      if (state is HasEntries) {
        emit(DatabaseState.hasEntries([...(state as HasEntries).entries, event.newEntry]));
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
