import 'package:freezed_annotation/freezed_annotation.dart';

// part 'request_event.freezed.dart';

// @freezed
// abstract class RequestEvent with _$RequestEvent {
//   const factory RequestEvent.madeRequest(String searchTerm) = MadeRequest;
// }

abstract class RequestEvent {}

class RequestStringTerm extends RequestEvent {
  final String searchTerm;

  RequestStringTerm(this.searchTerm);
}
