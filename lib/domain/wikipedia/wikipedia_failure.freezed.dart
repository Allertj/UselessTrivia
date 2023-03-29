// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../domain/wikipedia/wikipedia_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WikipediaFailure {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unexpected,
    required TResult Function(String message) serverError,
    required TResult Function(String message) fileNotFound,
    required TResult Function(String message) insufficientPermissions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unexpected,
    TResult? Function(String message)? serverError,
    TResult? Function(String message)? fileNotFound,
    TResult? Function(String message)? insufficientPermissions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unexpected,
    TResult Function(String message)? serverError,
    TResult Function(String message)? fileNotFound,
    TResult Function(String message)? insufficientPermissions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(ServerError value) serverError,
    required TResult Function(FileNotFound value) fileNotFound,
    required TResult Function(InsufficientPermissions value)
        insufficientPermissions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unexpected value)? unexpected,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(FileNotFound value)? fileNotFound,
    TResult? Function(InsufficientPermissions value)? insufficientPermissions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(ServerError value)? serverError,
    TResult Function(FileNotFound value)? fileNotFound,
    TResult Function(InsufficientPermissions value)? insufficientPermissions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WikipediaFailureCopyWith<WikipediaFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WikipediaFailureCopyWith<$Res> {
  factory $WikipediaFailureCopyWith(
          WikipediaFailure value, $Res Function(WikipediaFailure) then) =
      _$WikipediaFailureCopyWithImpl<$Res, WikipediaFailure>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$WikipediaFailureCopyWithImpl<$Res, $Val extends WikipediaFailure>
    implements $WikipediaFailureCopyWith<$Res> {
  _$WikipediaFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnexpectedCopyWith<$Res>
    implements $WikipediaFailureCopyWith<$Res> {
  factory _$$UnexpectedCopyWith(
          _$Unexpected value, $Res Function(_$Unexpected) then) =
      __$$UnexpectedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UnexpectedCopyWithImpl<$Res>
    extends _$WikipediaFailureCopyWithImpl<$Res, _$Unexpected>
    implements _$$UnexpectedCopyWith<$Res> {
  __$$UnexpectedCopyWithImpl(
      _$Unexpected _value, $Res Function(_$Unexpected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$Unexpected(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Unexpected implements Unexpected {
  const _$Unexpected(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'WikipediaFailure.unexpected(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Unexpected &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnexpectedCopyWith<_$Unexpected> get copyWith =>
      __$$UnexpectedCopyWithImpl<_$Unexpected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unexpected,
    required TResult Function(String message) serverError,
    required TResult Function(String message) fileNotFound,
    required TResult Function(String message) insufficientPermissions,
  }) {
    return unexpected(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unexpected,
    TResult? Function(String message)? serverError,
    TResult? Function(String message)? fileNotFound,
    TResult? Function(String message)? insufficientPermissions,
  }) {
    return unexpected?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unexpected,
    TResult Function(String message)? serverError,
    TResult Function(String message)? fileNotFound,
    TResult Function(String message)? insufficientPermissions,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(ServerError value) serverError,
    required TResult Function(FileNotFound value) fileNotFound,
    required TResult Function(InsufficientPermissions value)
        insufficientPermissions,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unexpected value)? unexpected,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(FileNotFound value)? fileNotFound,
    TResult? Function(InsufficientPermissions value)? insufficientPermissions,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(ServerError value)? serverError,
    TResult Function(FileNotFound value)? fileNotFound,
    TResult Function(InsufficientPermissions value)? insufficientPermissions,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class Unexpected implements WikipediaFailure {
  const factory Unexpected(final String message) = _$Unexpected;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$UnexpectedCopyWith<_$Unexpected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerErrorCopyWith<$Res>
    implements $WikipediaFailureCopyWith<$Res> {
  factory _$$ServerErrorCopyWith(
          _$ServerError value, $Res Function(_$ServerError) then) =
      __$$ServerErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ServerErrorCopyWithImpl<$Res>
    extends _$WikipediaFailureCopyWithImpl<$Res, _$ServerError>
    implements _$$ServerErrorCopyWith<$Res> {
  __$$ServerErrorCopyWithImpl(
      _$ServerError _value, $Res Function(_$ServerError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ServerError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ServerError implements ServerError {
  const _$ServerError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'WikipediaFailure.serverError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerErrorCopyWith<_$ServerError> get copyWith =>
      __$$ServerErrorCopyWithImpl<_$ServerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unexpected,
    required TResult Function(String message) serverError,
    required TResult Function(String message) fileNotFound,
    required TResult Function(String message) insufficientPermissions,
  }) {
    return serverError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unexpected,
    TResult? Function(String message)? serverError,
    TResult? Function(String message)? fileNotFound,
    TResult? Function(String message)? insufficientPermissions,
  }) {
    return serverError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unexpected,
    TResult Function(String message)? serverError,
    TResult Function(String message)? fileNotFound,
    TResult Function(String message)? insufficientPermissions,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(ServerError value) serverError,
    required TResult Function(FileNotFound value) fileNotFound,
    required TResult Function(InsufficientPermissions value)
        insufficientPermissions,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unexpected value)? unexpected,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(FileNotFound value)? fileNotFound,
    TResult? Function(InsufficientPermissions value)? insufficientPermissions,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(ServerError value)? serverError,
    TResult Function(FileNotFound value)? fileNotFound,
    TResult Function(InsufficientPermissions value)? insufficientPermissions,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements WikipediaFailure {
  const factory ServerError(final String message) = _$ServerError;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ServerErrorCopyWith<_$ServerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FileNotFoundCopyWith<$Res>
    implements $WikipediaFailureCopyWith<$Res> {
  factory _$$FileNotFoundCopyWith(
          _$FileNotFound value, $Res Function(_$FileNotFound) then) =
      __$$FileNotFoundCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FileNotFoundCopyWithImpl<$Res>
    extends _$WikipediaFailureCopyWithImpl<$Res, _$FileNotFound>
    implements _$$FileNotFoundCopyWith<$Res> {
  __$$FileNotFoundCopyWithImpl(
      _$FileNotFound _value, $Res Function(_$FileNotFound) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FileNotFound(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FileNotFound implements FileNotFound {
  const _$FileNotFound(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'WikipediaFailure.fileNotFound(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileNotFound &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FileNotFoundCopyWith<_$FileNotFound> get copyWith =>
      __$$FileNotFoundCopyWithImpl<_$FileNotFound>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unexpected,
    required TResult Function(String message) serverError,
    required TResult Function(String message) fileNotFound,
    required TResult Function(String message) insufficientPermissions,
  }) {
    return fileNotFound(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unexpected,
    TResult? Function(String message)? serverError,
    TResult? Function(String message)? fileNotFound,
    TResult? Function(String message)? insufficientPermissions,
  }) {
    return fileNotFound?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unexpected,
    TResult Function(String message)? serverError,
    TResult Function(String message)? fileNotFound,
    TResult Function(String message)? insufficientPermissions,
    required TResult orElse(),
  }) {
    if (fileNotFound != null) {
      return fileNotFound(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(ServerError value) serverError,
    required TResult Function(FileNotFound value) fileNotFound,
    required TResult Function(InsufficientPermissions value)
        insufficientPermissions,
  }) {
    return fileNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unexpected value)? unexpected,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(FileNotFound value)? fileNotFound,
    TResult? Function(InsufficientPermissions value)? insufficientPermissions,
  }) {
    return fileNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(ServerError value)? serverError,
    TResult Function(FileNotFound value)? fileNotFound,
    TResult Function(InsufficientPermissions value)? insufficientPermissions,
    required TResult orElse(),
  }) {
    if (fileNotFound != null) {
      return fileNotFound(this);
    }
    return orElse();
  }
}

abstract class FileNotFound implements WikipediaFailure {
  const factory FileNotFound(final String message) = _$FileNotFound;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$FileNotFoundCopyWith<_$FileNotFound> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InsufficientPermissionsCopyWith<$Res>
    implements $WikipediaFailureCopyWith<$Res> {
  factory _$$InsufficientPermissionsCopyWith(_$InsufficientPermissions value,
          $Res Function(_$InsufficientPermissions) then) =
      __$$InsufficientPermissionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$InsufficientPermissionsCopyWithImpl<$Res>
    extends _$WikipediaFailureCopyWithImpl<$Res, _$InsufficientPermissions>
    implements _$$InsufficientPermissionsCopyWith<$Res> {
  __$$InsufficientPermissionsCopyWithImpl(_$InsufficientPermissions _value,
      $Res Function(_$InsufficientPermissions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$InsufficientPermissions(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InsufficientPermissions implements InsufficientPermissions {
  const _$InsufficientPermissions(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'WikipediaFailure.insufficientPermissions(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsufficientPermissions &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InsufficientPermissionsCopyWith<_$InsufficientPermissions> get copyWith =>
      __$$InsufficientPermissionsCopyWithImpl<_$InsufficientPermissions>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unexpected,
    required TResult Function(String message) serverError,
    required TResult Function(String message) fileNotFound,
    required TResult Function(String message) insufficientPermissions,
  }) {
    return insufficientPermissions(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unexpected,
    TResult? Function(String message)? serverError,
    TResult? Function(String message)? fileNotFound,
    TResult? Function(String message)? insufficientPermissions,
  }) {
    return insufficientPermissions?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unexpected,
    TResult Function(String message)? serverError,
    TResult Function(String message)? fileNotFound,
    TResult Function(String message)? insufficientPermissions,
    required TResult orElse(),
  }) {
    if (insufficientPermissions != null) {
      return insufficientPermissions(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(ServerError value) serverError,
    required TResult Function(FileNotFound value) fileNotFound,
    required TResult Function(InsufficientPermissions value)
        insufficientPermissions,
  }) {
    return insufficientPermissions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unexpected value)? unexpected,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(FileNotFound value)? fileNotFound,
    TResult? Function(InsufficientPermissions value)? insufficientPermissions,
  }) {
    return insufficientPermissions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(ServerError value)? serverError,
    TResult Function(FileNotFound value)? fileNotFound,
    TResult Function(InsufficientPermissions value)? insufficientPermissions,
    required TResult orElse(),
  }) {
    if (insufficientPermissions != null) {
      return insufficientPermissions(this);
    }
    return orElse();
  }
}

abstract class InsufficientPermissions implements WikipediaFailure {
  const factory InsufficientPermissions(final String message) =
      _$InsufficientPermissions;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$InsufficientPermissionsCopyWith<_$InsufficientPermissions> get copyWith =>
      throw _privateConstructorUsedError;
}
