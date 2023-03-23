import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../infrastructure/database/database.dart';
import 'database_event.dart';
import 'database_state.dart';

@singleton
class DatabaseWatcher extends Bloc<DatabaseEvent, DatabaseState> {
  final AppDatabase _database;

  DatabaseWatcher(this._database) : super(IsLoading()) {

    on<AskForCurrentEntries> ((event, emit) async {
      List<Trivia> current = await _database.triviaDao.selectAllTrivia();
      if (current.isEmpty) {
        emit(IsEmpty());
      } else {
        emit(HasEntries(current));
      }
    });

    on<Inserted>((event, emit) async {
      List<Trivia> current = await _database.triviaDao.selectAllTrivia();
      if (current.isEmpty) {
        emit(IsEmpty());
      } else {
        emit(HasEntries(current));
      }
    });

    on<Deleted>((event, emit) async {
      List<Trivia> current = await _database.triviaDao.selectAllTrivia();
      if (current.isEmpty) {
        emit(IsEmpty());
      } else {
        emit(HasEntries(current));
      }
    });
  }
}
