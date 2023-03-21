// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RequestState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isIdle,
    required TResult Function() inProgress,
    required TResult Function(Trivia result) isSuccessful,
    required TResult Function() hasFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? isIdle,
    TResult? Function()? inProgress,
    TResult? Function(Trivia result)? isSuccessful,
    TResult? Function()? hasFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isIdle,
    TResult Function()? inProgress,
    TResult Function(Trivia result)? isSuccessful,
    TResult Function()? hasFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsIdle value) isIdle,
    required TResult Function(InProgress value) inProgress,
    required TResult Function(IsSuccessful value) isSuccessful,
    required TResult Function(HasFailed value) hasFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IsIdle value)? isIdle,
    TResult? Function(InProgress value)? inProgress,
    TResult? Function(IsSuccessful value)? isSuccessful,
    TResult? Function(HasFailed value)? hasFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsIdle value)? isIdle,
    TResult Function(InProgress value)? inProgress,
    TResult Function(IsSuccessful value)? isSuccessful,
    TResult Function(HasFailed value)? hasFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestStateCopyWith<$Res> {
  factory $RequestStateCopyWith(
          RequestState value, $Res Function(RequestState) then) =
      _$RequestStateCopyWithImpl<$Res, RequestState>;
}

/// @nodoc
class _$RequestStateCopyWithImpl<$Res, $Val extends RequestState>
    implements $RequestStateCopyWith<$Res> {
  _$RequestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$IsIdleCopyWith<$Res> {
  factory _$$IsIdleCopyWith(_$IsIdle value, $Res Function(_$IsIdle) then) =
      __$$IsIdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IsIdleCopyWithImpl<$Res>
    extends _$RequestStateCopyWithImpl<$Res, _$IsIdle>
    implements _$$IsIdleCopyWith<$Res> {
  __$$IsIdleCopyWithImpl(_$IsIdle _value, $Res Function(_$IsIdle) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IsIdle implements IsIdle {
  const _$IsIdle();

  @override
  String toString() {
    return 'RequestState.isIdle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IsIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isIdle,
    required TResult Function() inProgress,
    required TResult Function(Trivia result) isSuccessful,
    required TResult Function() hasFailed,
  }) {
    return isIdle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? isIdle,
    TResult? Function()? inProgress,
    TResult? Function(Trivia result)? isSuccessful,
    TResult? Function()? hasFailed,
  }) {
    return isIdle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isIdle,
    TResult Function()? inProgress,
    TResult Function(Trivia result)? isSuccessful,
    TResult Function()? hasFailed,
    required TResult orElse(),
  }) {
    if (isIdle != null) {
      return isIdle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsIdle value) isIdle,
    required TResult Function(InProgress value) inProgress,
    required TResult Function(IsSuccessful value) isSuccessful,
    required TResult Function(HasFailed value) hasFailed,
  }) {
    return isIdle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IsIdle value)? isIdle,
    TResult? Function(InProgress value)? inProgress,
    TResult? Function(IsSuccessful value)? isSuccessful,
    TResult? Function(HasFailed value)? hasFailed,
  }) {
    return isIdle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsIdle value)? isIdle,
    TResult Function(InProgress value)? inProgress,
    TResult Function(IsSuccessful value)? isSuccessful,
    TResult Function(HasFailed value)? hasFailed,
    required TResult orElse(),
  }) {
    if (isIdle != null) {
      return isIdle(this);
    }
    return orElse();
  }
}

abstract class IsIdle implements RequestState {
  const factory IsIdle() = _$IsIdle;
}

/// @nodoc
abstract class _$$InProgressCopyWith<$Res> {
  factory _$$InProgressCopyWith(
          _$InProgress value, $Res Function(_$InProgress) then) =
      __$$InProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InProgressCopyWithImpl<$Res>
    extends _$RequestStateCopyWithImpl<$Res, _$InProgress>
    implements _$$InProgressCopyWith<$Res> {
  __$$InProgressCopyWithImpl(
      _$InProgress _value, $Res Function(_$InProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InProgress implements InProgress {
  const _$InProgress();

  @override
  String toString() {
    return 'RequestState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isIdle,
    required TResult Function() inProgress,
    required TResult Function(Trivia result) isSuccessful,
    required TResult Function() hasFailed,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? isIdle,
    TResult? Function()? inProgress,
    TResult? Function(Trivia result)? isSuccessful,
    TResult? Function()? hasFailed,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isIdle,
    TResult Function()? inProgress,
    TResult Function(Trivia result)? isSuccessful,
    TResult Function()? hasFailed,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsIdle value) isIdle,
    required TResult Function(InProgress value) inProgress,
    required TResult Function(IsSuccessful value) isSuccessful,
    required TResult Function(HasFailed value) hasFailed,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IsIdle value)? isIdle,
    TResult? Function(InProgress value)? inProgress,
    TResult? Function(IsSuccessful value)? isSuccessful,
    TResult? Function(HasFailed value)? hasFailed,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsIdle value)? isIdle,
    TResult Function(InProgress value)? inProgress,
    TResult Function(IsSuccessful value)? isSuccessful,
    TResult Function(HasFailed value)? hasFailed,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class InProgress implements RequestState {
  const factory InProgress() = _$InProgress;
}

/// @nodoc
abstract class _$$IsSuccessfulCopyWith<$Res> {
  factory _$$IsSuccessfulCopyWith(
          _$IsSuccessful value, $Res Function(_$IsSuccessful) then) =
      __$$IsSuccessfulCopyWithImpl<$Res>;
  @useResult
  $Res call({Trivia result});
}

/// @nodoc
class __$$IsSuccessfulCopyWithImpl<$Res>
    extends _$RequestStateCopyWithImpl<$Res, _$IsSuccessful>
    implements _$$IsSuccessfulCopyWith<$Res> {
  __$$IsSuccessfulCopyWithImpl(
      _$IsSuccessful _value, $Res Function(_$IsSuccessful) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_$IsSuccessful(
      freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Trivia,
    ));
  }
}

/// @nodoc

class _$IsSuccessful implements IsSuccessful {
  const _$IsSuccessful(this.result);

  @override
  final Trivia result;

  @override
  String toString() {
    return 'RequestState.isSuccessful(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsSuccessful &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IsSuccessfulCopyWith<_$IsSuccessful> get copyWith =>
      __$$IsSuccessfulCopyWithImpl<_$IsSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isIdle,
    required TResult Function() inProgress,
    required TResult Function(Trivia result) isSuccessful,
    required TResult Function() hasFailed,
  }) {
    return isSuccessful(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? isIdle,
    TResult? Function()? inProgress,
    TResult? Function(Trivia result)? isSuccessful,
    TResult? Function()? hasFailed,
  }) {
    return isSuccessful?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isIdle,
    TResult Function()? inProgress,
    TResult Function(Trivia result)? isSuccessful,
    TResult Function()? hasFailed,
    required TResult orElse(),
  }) {
    if (isSuccessful != null) {
      return isSuccessful(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsIdle value) isIdle,
    required TResult Function(InProgress value) inProgress,
    required TResult Function(IsSuccessful value) isSuccessful,
    required TResult Function(HasFailed value) hasFailed,
  }) {
    return isSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IsIdle value)? isIdle,
    TResult? Function(InProgress value)? inProgress,
    TResult? Function(IsSuccessful value)? isSuccessful,
    TResult? Function(HasFailed value)? hasFailed,
  }) {
    return isSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsIdle value)? isIdle,
    TResult Function(InProgress value)? inProgress,
    TResult Function(IsSuccessful value)? isSuccessful,
    TResult Function(HasFailed value)? hasFailed,
    required TResult orElse(),
  }) {
    if (isSuccessful != null) {
      return isSuccessful(this);
    }
    return orElse();
  }
}

abstract class IsSuccessful implements RequestState {
  const factory IsSuccessful(final Trivia result) = _$IsSuccessful;

  Trivia get result;
  @JsonKey(ignore: true)
  _$$IsSuccessfulCopyWith<_$IsSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HasFailedCopyWith<$Res> {
  factory _$$HasFailedCopyWith(
          _$HasFailed value, $Res Function(_$HasFailed) then) =
      __$$HasFailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HasFailedCopyWithImpl<$Res>
    extends _$RequestStateCopyWithImpl<$Res, _$HasFailed>
    implements _$$HasFailedCopyWith<$Res> {
  __$$HasFailedCopyWithImpl(
      _$HasFailed _value, $Res Function(_$HasFailed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HasFailed implements HasFailed {
  const _$HasFailed();

  @override
  String toString() {
    return 'RequestState.hasFailed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HasFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isIdle,
    required TResult Function() inProgress,
    required TResult Function(Trivia result) isSuccessful,
    required TResult Function() hasFailed,
  }) {
    return hasFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? isIdle,
    TResult? Function()? inProgress,
    TResult? Function(Trivia result)? isSuccessful,
    TResult? Function()? hasFailed,
  }) {
    return hasFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isIdle,
    TResult Function()? inProgress,
    TResult Function(Trivia result)? isSuccessful,
    TResult Function()? hasFailed,
    required TResult orElse(),
  }) {
    if (hasFailed != null) {
      return hasFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsIdle value) isIdle,
    required TResult Function(InProgress value) inProgress,
    required TResult Function(IsSuccessful value) isSuccessful,
    required TResult Function(HasFailed value) hasFailed,
  }) {
    return hasFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IsIdle value)? isIdle,
    TResult? Function(InProgress value)? inProgress,
    TResult? Function(IsSuccessful value)? isSuccessful,
    TResult? Function(HasFailed value)? hasFailed,
  }) {
    return hasFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsIdle value)? isIdle,
    TResult Function(InProgress value)? inProgress,
    TResult Function(IsSuccessful value)? isSuccessful,
    TResult Function(HasFailed value)? hasFailed,
    required TResult orElse(),
  }) {
    if (hasFailed != null) {
      return hasFailed(this);
    }
    return orElse();
  }
}

abstract class HasFailed implements RequestState {
  const factory HasFailed() = _$HasFailed;
}
