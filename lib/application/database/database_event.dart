import 'package:freezed_annotation/freezed_annotation.dart';

import '../../infrastructure/database/database.dart';

// part 'database_event.freezed.dart';
//
// @freezed
// abstract class NewDatabaseEvent with _$NewDatabaseEvent {
//   const factory NewDatabaseEvent.inserted(Trivia newEntry) = Inserted;
//   const factory NewDatabaseEvent.deleted() = Deleted;
//   const factory NewDatabaseEvent.changed() = Changed;
// }

class DatabaseEvent {}

class Inserted extends DatabaseEvent {
  final Trivia newTrivia;

  Inserted(this.newTrivia);
}

class Deleted extends DatabaseEvent {}

class Changed extends DatabaseEvent {}

class AskForCurrentEntries extends DatabaseEvent {}
