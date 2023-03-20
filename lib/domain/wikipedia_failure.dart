import 'package:freezed_annotation/freezed_annotation.dart';

part 'wikipedia_failure.freezed.dart';

@freezed
abstract class WikipediaFailure with _$WikipediaFailure {
  const factory WikipediaFailure.unexpected() = Unexpected;
  const factory WikipediaFailure.serverError() = ServerError;
  const factory WikipediaFailure.insufficientPermissions() = InsufficientPermissions;
}