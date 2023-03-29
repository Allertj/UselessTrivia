import 'package:freezed_annotation/freezed_annotation.dart';

part '../../domain/wikipedia/wikipedia_failure.freezed.dart';

@freezed
abstract class WikipediaFailure with _$WikipediaFailure {
  const factory WikipediaFailure.unexpected(String message) = Unexpected;
  const factory WikipediaFailure.serverError(String message) = ServerError;
  const factory WikipediaFailure.fileNotFound(String message) = FileNotFound;
  const factory WikipediaFailure.insufficientPermissions(String message) = InsufficientPermissions;
}