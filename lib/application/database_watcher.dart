import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../repository/database/database.dart';
import 'database_event.dart';
import 'database_state.dart';

@singleton
class DatabaseWatcher extends Bloc<DatabaseEvent, DatabaseState> {
  final MyDatabase _database;

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
  }
}
