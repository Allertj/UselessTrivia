// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'textfield_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TextFieldEvent {
  String get newEntry => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newEntry) entryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String newEntry)? entryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newEntry)? entryChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EntryChanged value) entryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EntryChanged value)? entryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EntryChanged value)? entryChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TextFieldEventCopyWith<TextFieldEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextFieldEventCopyWith<$Res> {
  factory $TextFieldEventCopyWith(
          TextFieldEvent value, $Res Function(TextFieldEvent) then) =
      _$TextFieldEventCopyWithImpl<$Res, TextFieldEvent>;
  @useResult
  $Res call({String newEntry});
}

/// @nodoc
class _$TextFieldEventCopyWithImpl<$Res, $Val extends TextFieldEvent>
    implements $TextFieldEventCopyWith<$Res> {
  _$TextFieldEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newEntry = null,
  }) {
    return _then(_value.copyWith(
      newEntry: null == newEntry
          ? _value.newEntry
          : newEntry // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EntryChangedCopyWith<$Res>
    implements $TextFieldEventCopyWith<$Res> {
  factory _$$EntryChangedCopyWith(
          _$EntryChanged value, $Res Function(_$EntryChanged) then) =
      __$$EntryChangedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String newEntry});
}

/// @nodoc
class __$$EntryChangedCopyWithImpl<$Res>
    extends _$TextFieldEventCopyWithImpl<$Res, _$EntryChanged>
    implements _$$EntryChangedCopyWith<$Res> {
  __$$EntryChangedCopyWithImpl(
      _$EntryChanged _value, $Res Function(_$EntryChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newEntry = null,
  }) {
    return _then(_$EntryChanged(
      null == newEntry
          ? _value.newEntry
          : newEntry // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EntryChanged implements EntryChanged {
  const _$EntryChanged(this.newEntry);

  @override
  final String newEntry;

  @override
  String toString() {
    return 'TextFieldEvent.entryChanged(newEntry: $newEntry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntryChanged &&
            (identical(other.newEntry, newEntry) ||
                other.newEntry == newEntry));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newEntry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EntryChangedCopyWith<_$EntryChanged> get copyWith =>
      __$$EntryChangedCopyWithImpl<_$EntryChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newEntry) entryChanged,
  }) {
    return entryChanged(newEntry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String newEntry)? entryChanged,
  }) {
    return entryChanged?.call(newEntry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newEntry)? entryChanged,
    required TResult orElse(),
  }) {
    if (entryChanged != null) {
      return entryChanged(newEntry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EntryChanged value) entryChanged,
  }) {
    return entryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EntryChanged value)? entryChanged,
  }) {
    return entryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EntryChanged value)? entryChanged,
    required TResult orElse(),
  }) {
    if (entryChanged != null) {
      return entryChanged(this);
    }
    return orElse();
  }
}

abstract class EntryChanged implements TextFieldEvent {
  const factory EntryChanged(final String newEntry) = _$EntryChanged;

  @override
  String get newEntry;
  @override
  @JsonKey(ignore: true)
  _$$EntryChangedCopyWith<_$EntryChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TextFieldState {
  String get currentEntry => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String currentEntry) currentEntry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String currentEntry)? currentEntry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String currentEntry)? currentEntry,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrentEntry value) currentEntry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrentEntry value)? currentEntry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrentEntry value)? currentEntry,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TextFieldStateCopyWith<TextFieldState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextFieldStateCopyWith<$Res> {
  factory $TextFieldStateCopyWith(
          TextFieldState value, $Res Function(TextFieldState) then) =
      _$TextFieldStateCopyWithImpl<$Res, TextFieldState>;
  @useResult
  $Res call({String currentEntry});
}

/// @nodoc
class _$TextFieldStateCopyWithImpl<$Res, $Val extends TextFieldState>
    implements $TextFieldStateCopyWith<$Res> {
  _$TextFieldStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentEntry = null,
  }) {
    return _then(_value.copyWith(
      currentEntry: null == currentEntry
          ? _value.currentEntry
          : currentEntry // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentEntryCopyWith<$Res>
    implements $TextFieldStateCopyWith<$Res> {
  factory _$$CurrentEntryCopyWith(
          _$CurrentEntry value, $Res Function(_$CurrentEntry) then) =
      __$$CurrentEntryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String currentEntry});
}

/// @nodoc
class __$$CurrentEntryCopyWithImpl<$Res>
    extends _$TextFieldStateCopyWithImpl<$Res, _$CurrentEntry>
    implements _$$CurrentEntryCopyWith<$Res> {
  __$$CurrentEntryCopyWithImpl(
      _$CurrentEntry _value, $Res Function(_$CurrentEntry) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentEntry = null,
  }) {
    return _then(_$CurrentEntry(
      null == currentEntry
          ? _value.currentEntry
          : currentEntry // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CurrentEntry implements CurrentEntry {
  const _$CurrentEntry(this.currentEntry);

  @override
  final String currentEntry;

  @override
  String toString() {
    return 'TextFieldState.currentEntry(currentEntry: $currentEntry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentEntry &&
            (identical(other.currentEntry, currentEntry) ||
                other.currentEntry == currentEntry));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentEntry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentEntryCopyWith<_$CurrentEntry> get copyWith =>
      __$$CurrentEntryCopyWithImpl<_$CurrentEntry>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String currentEntry) currentEntry,
  }) {
    return currentEntry(this.currentEntry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String currentEntry)? currentEntry,
  }) {
    return currentEntry?.call(this.currentEntry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String currentEntry)? currentEntry,
    required TResult orElse(),
  }) {
    if (currentEntry != null) {
      return currentEntry(this.currentEntry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrentEntry value) currentEntry,
  }) {
    return currentEntry(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrentEntry value)? currentEntry,
  }) {
    return currentEntry?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrentEntry value)? currentEntry,
    required TResult orElse(),
  }) {
    if (currentEntry != null) {
      return currentEntry(this);
    }
    return orElse();
  }
}

abstract class CurrentEntry implements TextFieldState {
  const factory CurrentEntry(final String currentEntry) = _$CurrentEntry;

  @override
  String get currentEntry;
  @override
  @JsonKey(ignore: true)
  _$$CurrentEntryCopyWith<_$CurrentEntry> get copyWith =>
      throw _privateConstructorUsedError;
}
