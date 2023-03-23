import 'package:freezed_annotation/freezed_annotation.dart';

import '../../infrastructure/database/database.dart';

// part 'request_state.freezed.dart';

// @freezed
// abstract class RequestState with _$RequestState {
//   const factory RequestState.isIdle() = IsIdle;
//   const factory RequestState.inProgress() = InProgress;
//   const factory RequestState.isSuccessful(Trivia result) = IsSuccessful;
//   const factory RequestState.hasFailed() = HasFailed;
// }

abstract class RequestState {}

class IsIdle extends RequestState {}

class InProgress extends RequestState {}

class IsSuccessful extends RequestState {
  final Trivia result;

  IsSuccessful(this.result);
}

class HasSuccessfullyDownloaded extends RequestState {
  final Trivia result;

  HasSuccessfullyDownloaded(this.result);
}

class HasFailed extends RequestState {
  final String failureMessage;

  HasFailed(this.failureMessage);
}

class IsSuccessfullyDeleted extends RequestState {
}