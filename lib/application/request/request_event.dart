import 'package:freezed_annotation/freezed_annotation.dart';

// part 'request_event.freezed.dart';

// @freezed
// abstract class RequestEvent with _$RequestEvent {
//   const factory RequestEvent.madeRequest(String searchTerm) = MadeRequest;
// }

abstract class RequestEvent {}

class RequestSummary extends RequestEvent {
  final String searchTerm;

  RequestSummary(this.searchTerm);
}

class RequestLead extends RequestEvent {
  final String searchTerm;

  RequestLead(this.searchTerm);
}

class RequestDeletion extends RequestEvent {
  final String itemToBeDeleted;

  RequestDeletion(this.itemToBeDeleted);
}