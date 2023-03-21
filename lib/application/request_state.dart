import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:useless_trivia/repository/database/database.dart';

part 'request_state.freezed.dart';

@freezed
abstract class RequestState with _$RequestState {
  const factory RequestState.isIdle() = IsIdle;
  const factory RequestState.inProgress() = InProgress;
  const factory RequestState.isSuccessful(Trivia result) = IsSuccessful;
  const factory RequestState.hasFailed() = HasFailed;
}