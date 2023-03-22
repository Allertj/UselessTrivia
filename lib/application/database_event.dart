import 'package:freezed_annotation/freezed_annotation.dart';
import '../repository/database/database.dart';

// part 'database_event.freezed.dart';
//
// @freezed
// abstract class NewDatabaseEvent with _$NewDatabaseEvent {
//   const factory NewDatabaseEvent.inserted(Trivia newEntry) = Inserted;
//   const factory NewDatabaseEvent.deleted() = Deleted;
//   const factory NewDatabaseEvent.changed() = Changed;
// }

class NewDatabaseEvent {}

class Inserted extends NewDatabaseEvent {
  final Trivia newTrivia;

  Inserted(this.newTrivia);
}

class Deleted extends NewDatabaseEvent {}

class Changed extends NewDatabaseEvent {}

class AskForCurrentEntries extends NewDatabaseEvent {}
