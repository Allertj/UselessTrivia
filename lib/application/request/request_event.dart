import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_event.freezed.dart';

@freezed
abstract class RequestEvent with _$RequestEvent {
  const factory RequestEvent.requestSummary(String searchTerm) = RequestSummary;
  const factory RequestEvent.requestLead(String searchTerm) = RequestLead;
  const factory RequestEvent.requestDeletion(String titleOfItemToBeDeleted) = RequestDeletion;
}