import 'package:freezed_annotation/freezed_annotation.dart';
import '../../infrastructure/database/database.dart';

part 'database_event.freezed.dart';

@freezed
abstract class DatabaseEvent with _$DatabaseEvent {
  const factory DatabaseEvent.inserted(Trivia newEntry) = Inserted;
  const factory DatabaseEvent.deleted(String title) = Deleted;
  const factory DatabaseEvent.changed() = Changed;
  const factory DatabaseEvent.askForCurrentEntries() = AskForCurrentEntries;
}
