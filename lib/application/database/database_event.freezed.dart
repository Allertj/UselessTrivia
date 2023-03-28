// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'database_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DatabaseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Trivia newEntry) inserted,
    required TResult Function(String title) deleted,
    required TResult Function() changed,
    required TResult Function() askForCurrentEntries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Trivia newEntry)? inserted,
    TResult? Function(String title)? deleted,
    TResult? Function()? changed,
    TResult? Function()? askForCurrentEntries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Trivia newEntry)? inserted,
    TResult Function(String title)? deleted,
    TResult Function()? changed,
    TResult Function()? askForCurrentEntries,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Inserted value) inserted,
    required TResult Function(Deleted value) deleted,
    required TResult Function(Changed value) changed,
    required TResult Function(AskForCurrentEntries value) askForCurrentEntries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Inserted value)? inserted,
    TResult? Function(Deleted value)? deleted,
    TResult? Function(Changed value)? changed,
    TResult? Function(AskForCurrentEntries value)? askForCurrentEntries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Inserted value)? inserted,
    TResult Function(Deleted value)? deleted,
    TResult Function(Changed value)? changed,
    TResult Function(AskForCurrentEntries value)? askForCurrentEntries,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatabaseEventCopyWith<$Res> {
  factory $DatabaseEventCopyWith(
          DatabaseEvent value, $Res Function(DatabaseEvent) then) =
      _$DatabaseEventCopyWithImpl<$Res, DatabaseEvent>;
}

/// @nodoc
class _$DatabaseEventCopyWithImpl<$Res, $Val extends DatabaseEvent>
    implements $DatabaseEventCopyWith<$Res> {
  _$DatabaseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InsertedCopyWith<$Res> {
  factory _$$InsertedCopyWith(
          _$Inserted value, $Res Function(_$Inserted) then) =
      __$$InsertedCopyWithImpl<$Res>;
  @useResult
  $Res call({Trivia newEntry});
}

/// @nodoc
class __$$InsertedCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$Inserted>
    implements _$$InsertedCopyWith<$Res> {
  __$$InsertedCopyWithImpl(_$Inserted _value, $Res Function(_$Inserted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newEntry = freezed,
  }) {
    return _then(_$Inserted(
      freezed == newEntry
          ? _value.newEntry
          : newEntry // ignore: cast_nullable_to_non_nullable
              as Trivia,
    ));
  }
}

/// @nodoc

class _$Inserted implements Inserted {
  const _$Inserted(this.newEntry);

  @override
  final Trivia newEntry;

  @override
  String toString() {
    return 'DatabaseEvent.inserted(newEntry: $newEntry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Inserted &&
            const DeepCollectionEquality().equals(other.newEntry, newEntry));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newEntry));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InsertedCopyWith<_$Inserted> get copyWith =>
      __$$InsertedCopyWithImpl<_$Inserted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Trivia newEntry) inserted,
    required TResult Function(String title) deleted,
    required TResult Function() changed,
    required TResult Function() askForCurrentEntries,
  }) {
    return inserted(newEntry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Trivia newEntry)? inserted,
    TResult? Function(String title)? deleted,
    TResult? Function()? changed,
    TResult? Function()? askForCurrentEntries,
  }) {
    return inserted?.call(newEntry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Trivia newEntry)? inserted,
    TResult Function(String title)? deleted,
    TResult Function()? changed,
    TResult Function()? askForCurrentEntries,
    required TResult orElse(),
  }) {
    if (inserted != null) {
      return inserted(newEntry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Inserted value) inserted,
    required TResult Function(Deleted value) deleted,
    required TResult Function(Changed value) changed,
    required TResult Function(AskForCurrentEntries value) askForCurrentEntries,
  }) {
    return inserted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Inserted value)? inserted,
    TResult? Function(Deleted value)? deleted,
    TResult? Function(Changed value)? changed,
    TResult? Function(AskForCurrentEntries value)? askForCurrentEntries,
  }) {
    return inserted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Inserted value)? inserted,
    TResult Function(Deleted value)? deleted,
    TResult Function(Changed value)? changed,
    TResult Function(AskForCurrentEntries value)? askForCurrentEntries,
    required TResult orElse(),
  }) {
    if (inserted != null) {
      return inserted(this);
    }
    return orElse();
  }
}

abstract class Inserted implements DatabaseEvent {
  const factory Inserted(final Trivia newEntry) = _$Inserted;

  Trivia get newEntry;
  @JsonKey(ignore: true)
  _$$InsertedCopyWith<_$Inserted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletedCopyWith<$Res> {
  factory _$$DeletedCopyWith(_$Deleted value, $Res Function(_$Deleted) then) =
      __$$DeletedCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$DeletedCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$Deleted>
    implements _$$DeletedCopyWith<$Res> {
  __$$DeletedCopyWithImpl(_$Deleted _value, $Res Function(_$Deleted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$Deleted(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Deleted implements Deleted {
  const _$Deleted(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'DatabaseEvent.deleted(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Deleted &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletedCopyWith<_$Deleted> get copyWith =>
      __$$DeletedCopyWithImpl<_$Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Trivia newEntry) inserted,
    required TResult Function(String title) deleted,
    required TResult Function() changed,
    required TResult Function() askForCurrentEntries,
  }) {
    return deleted(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Trivia newEntry)? inserted,
    TResult? Function(String title)? deleted,
    TResult? Function()? changed,
    TResult? Function()? askForCurrentEntries,
  }) {
    return deleted?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Trivia newEntry)? inserted,
    TResult Function(String title)? deleted,
    TResult Function()? changed,
    TResult Function()? askForCurrentEntries,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Inserted value) inserted,
    required TResult Function(Deleted value) deleted,
    required TResult Function(Changed value) changed,
    required TResult Function(AskForCurrentEntries value) askForCurrentEntries,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Inserted value)? inserted,
    TResult? Function(Deleted value)? deleted,
    TResult? Function(Changed value)? changed,
    TResult? Function(AskForCurrentEntries value)? askForCurrentEntries,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Inserted value)? inserted,
    TResult Function(Deleted value)? deleted,
    TResult Function(Changed value)? changed,
    TResult Function(AskForCurrentEntries value)? askForCurrentEntries,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class Deleted implements DatabaseEvent {
  const factory Deleted(final String title) = _$Deleted;

  String get title;
  @JsonKey(ignore: true)
  _$$DeletedCopyWith<_$Deleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangedCopyWith<$Res> {
  factory _$$ChangedCopyWith(_$Changed value, $Res Function(_$Changed) then) =
      __$$ChangedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangedCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$Changed>
    implements _$$ChangedCopyWith<$Res> {
  __$$ChangedCopyWithImpl(_$Changed _value, $Res Function(_$Changed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Changed implements Changed {
  const _$Changed();

  @override
  String toString() {
    return 'DatabaseEvent.changed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Changed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Trivia newEntry) inserted,
    required TResult Function(String title) deleted,
    required TResult Function() changed,
    required TResult Function() askForCurrentEntries,
  }) {
    return changed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Trivia newEntry)? inserted,
    TResult? Function(String title)? deleted,
    TResult? Function()? changed,
    TResult? Function()? askForCurrentEntries,
  }) {
    return changed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Trivia newEntry)? inserted,
    TResult Function(String title)? deleted,
    TResult Function()? changed,
    TResult Function()? askForCurrentEntries,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Inserted value) inserted,
    required TResult Function(Deleted value) deleted,
    required TResult Function(Changed value) changed,
    required TResult Function(AskForCurrentEntries value) askForCurrentEntries,
  }) {
    return changed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Inserted value)? inserted,
    TResult? Function(Deleted value)? deleted,
    TResult? Function(Changed value)? changed,
    TResult? Function(AskForCurrentEntries value)? askForCurrentEntries,
  }) {
    return changed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Inserted value)? inserted,
    TResult Function(Deleted value)? deleted,
    TResult Function(Changed value)? changed,
    TResult Function(AskForCurrentEntries value)? askForCurrentEntries,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(this);
    }
    return orElse();
  }
}

abstract class Changed implements DatabaseEvent {
  const factory Changed() = _$Changed;
}

/// @nodoc
abstract class _$$AskForCurrentEntriesCopyWith<$Res> {
  factory _$$AskForCurrentEntriesCopyWith(_$AskForCurrentEntries value,
          $Res Function(_$AskForCurrentEntries) then) =
      __$$AskForCurrentEntriesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AskForCurrentEntriesCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$AskForCurrentEntries>
    implements _$$AskForCurrentEntriesCopyWith<$Res> {
  __$$AskForCurrentEntriesCopyWithImpl(_$AskForCurrentEntries _value,
      $Res Function(_$AskForCurrentEntries) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AskForCurrentEntries implements AskForCurrentEntries {
  const _$AskForCurrentEntries();

  @override
  String toString() {
    return 'DatabaseEvent.askForCurrentEntries()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AskForCurrentEntries);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Trivia newEntry) inserted,
    required TResult Function(String title) deleted,
    required TResult Function() changed,
    required TResult Function() askForCurrentEntries,
  }) {
    return askForCurrentEntries();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Trivia newEntry)? inserted,
    TResult? Function(String title)? deleted,
    TResult? Function()? changed,
    TResult? Function()? askForCurrentEntries,
  }) {
    return askForCurrentEntries?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Trivia newEntry)? inserted,
    TResult Function(String title)? deleted,
    TResult Function()? changed,
    TResult Function()? askForCurrentEntries,
    required TResult orElse(),
  }) {
    if (askForCurrentEntries != null) {
      return askForCurrentEntries();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Inserted value) inserted,
    required TResult Function(Deleted value) deleted,
    required TResult Function(Changed value) changed,
    required TResult Function(AskForCurrentEntries value) askForCurrentEntries,
  }) {
    return askForCurrentEntries(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Inserted value)? inserted,
    TResult? Function(Deleted value)? deleted,
    TResult? Function(Changed value)? changed,
    TResult? Function(AskForCurrentEntries value)? askForCurrentEntries,
  }) {
    return askForCurrentEntries?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Inserted value)? inserted,
    TResult Function(Deleted value)? deleted,
    TResult Function(Changed value)? changed,
    TResult Function(AskForCurrentEntries value)? askForCurrentEntries,
    required TResult orElse(),
  }) {
    if (askForCurrentEntries != null) {
      return askForCurrentEntries(this);
    }
    return orElse();
  }
}

abstract class AskForCurrentEntries implements DatabaseEvent {
  const factory AskForCurrentEntries() = _$AskForCurrentEntries;
}
