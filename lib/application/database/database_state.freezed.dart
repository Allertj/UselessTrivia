// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'database_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DatabaseState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isLoading,
    required TResult Function() isEmpty,
    required TResult Function(List<Trivia> entries) hasEntries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? isLoading,
    TResult? Function()? isEmpty,
    TResult? Function(List<Trivia> entries)? hasEntries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isLoading,
    TResult Function()? isEmpty,
    TResult Function(List<Trivia> entries)? hasEntries,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsLoading value) isLoading,
    required TResult Function(IsEmpty value) isEmpty,
    required TResult Function(HasEntries value) hasEntries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IsLoading value)? isLoading,
    TResult? Function(IsEmpty value)? isEmpty,
    TResult? Function(HasEntries value)? hasEntries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsLoading value)? isLoading,
    TResult Function(IsEmpty value)? isEmpty,
    TResult Function(HasEntries value)? hasEntries,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatabaseStateCopyWith<$Res> {
  factory $DatabaseStateCopyWith(
          DatabaseState value, $Res Function(DatabaseState) then) =
      _$DatabaseStateCopyWithImpl<$Res, DatabaseState>;
}

/// @nodoc
class _$DatabaseStateCopyWithImpl<$Res, $Val extends DatabaseState>
    implements $DatabaseStateCopyWith<$Res> {
  _$DatabaseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$IsLoadingCopyWith<$Res> {
  factory _$$IsLoadingCopyWith(
          _$IsLoading value, $Res Function(_$IsLoading) then) =
      __$$IsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IsLoadingCopyWithImpl<$Res>
    extends _$DatabaseStateCopyWithImpl<$Res, _$IsLoading>
    implements _$$IsLoadingCopyWith<$Res> {
  __$$IsLoadingCopyWithImpl(
      _$IsLoading _value, $Res Function(_$IsLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IsLoading implements IsLoading {
  const _$IsLoading();

  @override
  String toString() {
    return 'DatabaseState.isLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isLoading,
    required TResult Function() isEmpty,
    required TResult Function(List<Trivia> entries) hasEntries,
  }) {
    return isLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? isLoading,
    TResult? Function()? isEmpty,
    TResult? Function(List<Trivia> entries)? hasEntries,
  }) {
    return isLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isLoading,
    TResult Function()? isEmpty,
    TResult Function(List<Trivia> entries)? hasEntries,
    required TResult orElse(),
  }) {
    if (isLoading != null) {
      return isLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsLoading value) isLoading,
    required TResult Function(IsEmpty value) isEmpty,
    required TResult Function(HasEntries value) hasEntries,
  }) {
    return isLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IsLoading value)? isLoading,
    TResult? Function(IsEmpty value)? isEmpty,
    TResult? Function(HasEntries value)? hasEntries,
  }) {
    return isLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsLoading value)? isLoading,
    TResult Function(IsEmpty value)? isEmpty,
    TResult Function(HasEntries value)? hasEntries,
    required TResult orElse(),
  }) {
    if (isLoading != null) {
      return isLoading(this);
    }
    return orElse();
  }
}

abstract class IsLoading implements DatabaseState {
  const factory IsLoading() = _$IsLoading;
}

/// @nodoc
abstract class _$$IsEmptyCopyWith<$Res> {
  factory _$$IsEmptyCopyWith(_$IsEmpty value, $Res Function(_$IsEmpty) then) =
      __$$IsEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IsEmptyCopyWithImpl<$Res>
    extends _$DatabaseStateCopyWithImpl<$Res, _$IsEmpty>
    implements _$$IsEmptyCopyWith<$Res> {
  __$$IsEmptyCopyWithImpl(_$IsEmpty _value, $Res Function(_$IsEmpty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IsEmpty implements IsEmpty {
  const _$IsEmpty();

  @override
  String toString() {
    return 'DatabaseState.isEmpty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IsEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isLoading,
    required TResult Function() isEmpty,
    required TResult Function(List<Trivia> entries) hasEntries,
  }) {
    return isEmpty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? isLoading,
    TResult? Function()? isEmpty,
    TResult? Function(List<Trivia> entries)? hasEntries,
  }) {
    return isEmpty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isLoading,
    TResult Function()? isEmpty,
    TResult Function(List<Trivia> entries)? hasEntries,
    required TResult orElse(),
  }) {
    if (isEmpty != null) {
      return isEmpty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsLoading value) isLoading,
    required TResult Function(IsEmpty value) isEmpty,
    required TResult Function(HasEntries value) hasEntries,
  }) {
    return isEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IsLoading value)? isLoading,
    TResult? Function(IsEmpty value)? isEmpty,
    TResult? Function(HasEntries value)? hasEntries,
  }) {
    return isEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsLoading value)? isLoading,
    TResult Function(IsEmpty value)? isEmpty,
    TResult Function(HasEntries value)? hasEntries,
    required TResult orElse(),
  }) {
    if (isEmpty != null) {
      return isEmpty(this);
    }
    return orElse();
  }
}

abstract class IsEmpty implements DatabaseState {
  const factory IsEmpty() = _$IsEmpty;
}

/// @nodoc
abstract class _$$HasEntriesCopyWith<$Res> {
  factory _$$HasEntriesCopyWith(
          _$HasEntries value, $Res Function(_$HasEntries) then) =
      __$$HasEntriesCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Trivia> entries});
}

/// @nodoc
class __$$HasEntriesCopyWithImpl<$Res>
    extends _$DatabaseStateCopyWithImpl<$Res, _$HasEntries>
    implements _$$HasEntriesCopyWith<$Res> {
  __$$HasEntriesCopyWithImpl(
      _$HasEntries _value, $Res Function(_$HasEntries) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entries = null,
  }) {
    return _then(_$HasEntries(
      null == entries
          ? _value._entries
          : entries // ignore: cast_nullable_to_non_nullable
              as List<Trivia>,
    ));
  }
}

/// @nodoc

class _$HasEntries implements HasEntries {
  const _$HasEntries(final List<Trivia> entries) : _entries = entries;

  final List<Trivia> _entries;
  @override
  List<Trivia> get entries {
    if (_entries is EqualUnmodifiableListView) return _entries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entries);
  }

  @override
  String toString() {
    return 'DatabaseState.hasEntries(entries: $entries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HasEntries &&
            const DeepCollectionEquality().equals(other._entries, _entries));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_entries));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HasEntriesCopyWith<_$HasEntries> get copyWith =>
      __$$HasEntriesCopyWithImpl<_$HasEntries>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isLoading,
    required TResult Function() isEmpty,
    required TResult Function(List<Trivia> entries) hasEntries,
  }) {
    return hasEntries(entries);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? isLoading,
    TResult? Function()? isEmpty,
    TResult? Function(List<Trivia> entries)? hasEntries,
  }) {
    return hasEntries?.call(entries);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isLoading,
    TResult Function()? isEmpty,
    TResult Function(List<Trivia> entries)? hasEntries,
    required TResult orElse(),
  }) {
    if (hasEntries != null) {
      return hasEntries(entries);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsLoading value) isLoading,
    required TResult Function(IsEmpty value) isEmpty,
    required TResult Function(HasEntries value) hasEntries,
  }) {
    return hasEntries(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IsLoading value)? isLoading,
    TResult? Function(IsEmpty value)? isEmpty,
    TResult? Function(HasEntries value)? hasEntries,
  }) {
    return hasEntries?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsLoading value)? isLoading,
    TResult Function(IsEmpty value)? isEmpty,
    TResult Function(HasEntries value)? hasEntries,
    required TResult orElse(),
  }) {
    if (hasEntries != null) {
      return hasEntries(this);
    }
    return orElse();
  }
}

abstract class HasEntries implements DatabaseState {
  const factory HasEntries(final List<Trivia> entries) = _$HasEntries;

  List<Trivia> get entries;
  @JsonKey(ignore: true)
  _$$HasEntriesCopyWith<_$HasEntries> get copyWith =>
      throw _privateConstructorUsedError;
}
