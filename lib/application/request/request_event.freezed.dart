// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RequestEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchTerm) requestSummary,
    required TResult Function(String searchTerm) requestLead,
    required TResult Function(String titleOfItemToBeDeleted) requestDeletion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchTerm)? requestSummary,
    TResult? Function(String searchTerm)? requestLead,
    TResult? Function(String titleOfItemToBeDeleted)? requestDeletion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchTerm)? requestSummary,
    TResult Function(String searchTerm)? requestLead,
    TResult Function(String titleOfItemToBeDeleted)? requestDeletion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestSummary value) requestSummary,
    required TResult Function(RequestLead value) requestLead,
    required TResult Function(RequestDeletion value) requestDeletion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestSummary value)? requestSummary,
    TResult? Function(RequestLead value)? requestLead,
    TResult? Function(RequestDeletion value)? requestDeletion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestSummary value)? requestSummary,
    TResult Function(RequestLead value)? requestLead,
    TResult Function(RequestDeletion value)? requestDeletion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestEventCopyWith<$Res> {
  factory $RequestEventCopyWith(
          RequestEvent value, $Res Function(RequestEvent) then) =
      _$RequestEventCopyWithImpl<$Res, RequestEvent>;
}

/// @nodoc
class _$RequestEventCopyWithImpl<$Res, $Val extends RequestEvent>
    implements $RequestEventCopyWith<$Res> {
  _$RequestEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RequestSummaryCopyWith<$Res> {
  factory _$$RequestSummaryCopyWith(
          _$RequestSummary value, $Res Function(_$RequestSummary) then) =
      __$$RequestSummaryCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchTerm});
}

/// @nodoc
class __$$RequestSummaryCopyWithImpl<$Res>
    extends _$RequestEventCopyWithImpl<$Res, _$RequestSummary>
    implements _$$RequestSummaryCopyWith<$Res> {
  __$$RequestSummaryCopyWithImpl(
      _$RequestSummary _value, $Res Function(_$RequestSummary) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchTerm = null,
  }) {
    return _then(_$RequestSummary(
      null == searchTerm
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RequestSummary implements RequestSummary {
  const _$RequestSummary(this.searchTerm);

  @override
  final String searchTerm;

  @override
  String toString() {
    return 'RequestEvent.requestSummary(searchTerm: $searchTerm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestSummary &&
            (identical(other.searchTerm, searchTerm) ||
                other.searchTerm == searchTerm));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchTerm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestSummaryCopyWith<_$RequestSummary> get copyWith =>
      __$$RequestSummaryCopyWithImpl<_$RequestSummary>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchTerm) requestSummary,
    required TResult Function(String searchTerm) requestLead,
    required TResult Function(String titleOfItemToBeDeleted) requestDeletion,
  }) {
    return requestSummary(searchTerm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchTerm)? requestSummary,
    TResult? Function(String searchTerm)? requestLead,
    TResult? Function(String titleOfItemToBeDeleted)? requestDeletion,
  }) {
    return requestSummary?.call(searchTerm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchTerm)? requestSummary,
    TResult Function(String searchTerm)? requestLead,
    TResult Function(String titleOfItemToBeDeleted)? requestDeletion,
    required TResult orElse(),
  }) {
    if (requestSummary != null) {
      return requestSummary(searchTerm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestSummary value) requestSummary,
    required TResult Function(RequestLead value) requestLead,
    required TResult Function(RequestDeletion value) requestDeletion,
  }) {
    return requestSummary(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestSummary value)? requestSummary,
    TResult? Function(RequestLead value)? requestLead,
    TResult? Function(RequestDeletion value)? requestDeletion,
  }) {
    return requestSummary?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestSummary value)? requestSummary,
    TResult Function(RequestLead value)? requestLead,
    TResult Function(RequestDeletion value)? requestDeletion,
    required TResult orElse(),
  }) {
    if (requestSummary != null) {
      return requestSummary(this);
    }
    return orElse();
  }
}

abstract class RequestSummary implements RequestEvent {
  const factory RequestSummary(final String searchTerm) = _$RequestSummary;

  String get searchTerm;
  @JsonKey(ignore: true)
  _$$RequestSummaryCopyWith<_$RequestSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestLeadCopyWith<$Res> {
  factory _$$RequestLeadCopyWith(
          _$RequestLead value, $Res Function(_$RequestLead) then) =
      __$$RequestLeadCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchTerm});
}

/// @nodoc
class __$$RequestLeadCopyWithImpl<$Res>
    extends _$RequestEventCopyWithImpl<$Res, _$RequestLead>
    implements _$$RequestLeadCopyWith<$Res> {
  __$$RequestLeadCopyWithImpl(
      _$RequestLead _value, $Res Function(_$RequestLead) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchTerm = null,
  }) {
    return _then(_$RequestLead(
      null == searchTerm
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RequestLead implements RequestLead {
  const _$RequestLead(this.searchTerm);

  @override
  final String searchTerm;

  @override
  String toString() {
    return 'RequestEvent.requestLead(searchTerm: $searchTerm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestLead &&
            (identical(other.searchTerm, searchTerm) ||
                other.searchTerm == searchTerm));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchTerm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestLeadCopyWith<_$RequestLead> get copyWith =>
      __$$RequestLeadCopyWithImpl<_$RequestLead>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchTerm) requestSummary,
    required TResult Function(String searchTerm) requestLead,
    required TResult Function(String titleOfItemToBeDeleted) requestDeletion,
  }) {
    return requestLead(searchTerm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchTerm)? requestSummary,
    TResult? Function(String searchTerm)? requestLead,
    TResult? Function(String titleOfItemToBeDeleted)? requestDeletion,
  }) {
    return requestLead?.call(searchTerm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchTerm)? requestSummary,
    TResult Function(String searchTerm)? requestLead,
    TResult Function(String titleOfItemToBeDeleted)? requestDeletion,
    required TResult orElse(),
  }) {
    if (requestLead != null) {
      return requestLead(searchTerm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestSummary value) requestSummary,
    required TResult Function(RequestLead value) requestLead,
    required TResult Function(RequestDeletion value) requestDeletion,
  }) {
    return requestLead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestSummary value)? requestSummary,
    TResult? Function(RequestLead value)? requestLead,
    TResult? Function(RequestDeletion value)? requestDeletion,
  }) {
    return requestLead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestSummary value)? requestSummary,
    TResult Function(RequestLead value)? requestLead,
    TResult Function(RequestDeletion value)? requestDeletion,
    required TResult orElse(),
  }) {
    if (requestLead != null) {
      return requestLead(this);
    }
    return orElse();
  }
}

abstract class RequestLead implements RequestEvent {
  const factory RequestLead(final String searchTerm) = _$RequestLead;

  String get searchTerm;
  @JsonKey(ignore: true)
  _$$RequestLeadCopyWith<_$RequestLead> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestDeletionCopyWith<$Res> {
  factory _$$RequestDeletionCopyWith(
          _$RequestDeletion value, $Res Function(_$RequestDeletion) then) =
      __$$RequestDeletionCopyWithImpl<$Res>;
  @useResult
  $Res call({String titleOfItemToBeDeleted});
}

/// @nodoc
class __$$RequestDeletionCopyWithImpl<$Res>
    extends _$RequestEventCopyWithImpl<$Res, _$RequestDeletion>
    implements _$$RequestDeletionCopyWith<$Res> {
  __$$RequestDeletionCopyWithImpl(
      _$RequestDeletion _value, $Res Function(_$RequestDeletion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? titleOfItemToBeDeleted = null,
  }) {
    return _then(_$RequestDeletion(
      null == titleOfItemToBeDeleted
          ? _value.titleOfItemToBeDeleted
          : titleOfItemToBeDeleted // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RequestDeletion implements RequestDeletion {
  const _$RequestDeletion(this.titleOfItemToBeDeleted);

  @override
  final String titleOfItemToBeDeleted;

  @override
  String toString() {
    return 'RequestEvent.requestDeletion(titleOfItemToBeDeleted: $titleOfItemToBeDeleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestDeletion &&
            (identical(other.titleOfItemToBeDeleted, titleOfItemToBeDeleted) ||
                other.titleOfItemToBeDeleted == titleOfItemToBeDeleted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, titleOfItemToBeDeleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestDeletionCopyWith<_$RequestDeletion> get copyWith =>
      __$$RequestDeletionCopyWithImpl<_$RequestDeletion>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchTerm) requestSummary,
    required TResult Function(String searchTerm) requestLead,
    required TResult Function(String titleOfItemToBeDeleted) requestDeletion,
  }) {
    return requestDeletion(titleOfItemToBeDeleted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchTerm)? requestSummary,
    TResult? Function(String searchTerm)? requestLead,
    TResult? Function(String titleOfItemToBeDeleted)? requestDeletion,
  }) {
    return requestDeletion?.call(titleOfItemToBeDeleted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchTerm)? requestSummary,
    TResult Function(String searchTerm)? requestLead,
    TResult Function(String titleOfItemToBeDeleted)? requestDeletion,
    required TResult orElse(),
  }) {
    if (requestDeletion != null) {
      return requestDeletion(titleOfItemToBeDeleted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestSummary value) requestSummary,
    required TResult Function(RequestLead value) requestLead,
    required TResult Function(RequestDeletion value) requestDeletion,
  }) {
    return requestDeletion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestSummary value)? requestSummary,
    TResult? Function(RequestLead value)? requestLead,
    TResult? Function(RequestDeletion value)? requestDeletion,
  }) {
    return requestDeletion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestSummary value)? requestSummary,
    TResult Function(RequestLead value)? requestLead,
    TResult Function(RequestDeletion value)? requestDeletion,
    required TResult orElse(),
  }) {
    if (requestDeletion != null) {
      return requestDeletion(this);
    }
    return orElse();
  }
}

abstract class RequestDeletion implements RequestEvent {
  const factory RequestDeletion(final String titleOfItemToBeDeleted) =
      _$RequestDeletion;

  String get titleOfItemToBeDeleted;
  @JsonKey(ignore: true)
  _$$RequestDeletionCopyWith<_$RequestDeletion> get copyWith =>
      throw _privateConstructorUsedError;
}
