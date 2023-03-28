import 'package:freezed_annotation/freezed_annotation.dart';
import '../../infrastructure/database/database.dart';

part 'database_state.freezed.dart';

@freezed
abstract class DatabaseState with _$DatabaseState {
  const factory DatabaseState.isLoading() = IsLoading;
  const factory DatabaseState.isEmpty() = IsEmpty;
  const factory DatabaseState.hasEntries(List<Trivia> entries) = HasEntries;
}