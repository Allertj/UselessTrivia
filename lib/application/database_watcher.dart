import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../repository/database/database.dart';
import 'database_event.dart';
import 'database_state.dart';

@injectable
class DatabaseWatcher extends Bloc<NewDatabaseEvent, DatabaseState> {
  final MyDatabase _database;

  DatabaseWatcher(this._database) : super(IsEmpty()) {
    on<Inserted>((event, emit) async {
      print("inserted");
      List<Trivia> current = await _database.triviaDao.selectAllTrivia();
      if (current.isEmpty) {
        print("empty");
        emit(IsEmpty());
      } else {
        print("hasentries");
        emit(HasEntries(current));
      }
    });
  }
}
