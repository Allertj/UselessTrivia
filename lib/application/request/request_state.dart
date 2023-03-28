import 'package:freezed_annotation/freezed_annotation.dart';

import '../../infrastructure/database/database.dart';

part 'request_state.freezed.dart';

@freezed
abstract class RequestState with _$RequestState {
  const factory RequestState.isIdle() = IsIdle;
  const factory RequestState.inProgress() = InProgress;
  const factory RequestState.isSuccessful(Trivia result) = IsSuccessful;
  const factory RequestState.hasFailed(String failureMessage) = HasFailed;
  const factory RequestState.hasSuccessfullyDownloaded(Trivia result) = HasSuccessfullyDownloaded;
  const factory RequestState.isSuccesfullyDeleted() = IsSuccesfullyDeleted;
}