import 'package:freezed_annotation/freezed_annotation.dart';

// part 'request_event.freezed.dart';

// @freezed
// abstract class RequestEvent with _$RequestEvent {
//   const factory RequestEvent.madeRequest(String searchTerm) = MadeRequest;
// }

abstract class RequestEvent1 {}

class RequestStringTerm1 extends RequestEvent1  {
  final String searchTerm;
  RequestStringTerm1(this.searchTerm);
}