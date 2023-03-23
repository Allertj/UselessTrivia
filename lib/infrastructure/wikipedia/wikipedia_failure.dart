// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'wikipedia_failure.freezed.dart';
//
// @freezed
// abstract class WikipediaFailure with _$WikipediaFailure {
//   const factory WikipediaFailure.unexpected(String message) = Unexpected;
//   const factory WikipediaFailure.serverError(String message) = ServerError;
//   const factory WikipediaFailure.fileNotFound(String message) = FileNotFound;
//   const factory WikipediaFailure.insufficientPermissions(String message) = InsufficientPermissions;
// }


abstract class WikipediaFailure {
  late final String message;
}

class Unexpected extends WikipediaFailure {
  final String message;
  Unexpected(this.message);
}

class ServerError extends WikipediaFailure {
  final String message;
  ServerError(this.message);
}

class FileNotFound extends WikipediaFailure {
  final String message;
  FileNotFound(this.message);
}

class InSufficientPermissions extends WikipediaFailure {
  final String message;
  InSufficientPermissions(this.message);
}
