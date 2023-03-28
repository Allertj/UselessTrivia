// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $TriviaClassTable extends TriviaClass
    with TableInfo<$TriviaClassTable, Trivia> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TriviaClassTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _searchTermMeta =
      const VerificationMeta('searchTerm');
  @override
  late final GeneratedColumn<String> searchTerm = GeneratedColumn<String>(
      'search_term', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, searchTerm, description];
  @override
  String get aliasedName => _alias ?? 'trivia_class';
  @override
  String get actualTableName => 'trivia_class';
  @override
  VerificationContext validateIntegrity(Insertable<Trivia> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('search_term')) {
      context.handle(
          _searchTermMeta,
          searchTerm.isAcceptableOrUnknown(
              data['search_term']!, _searchTermMeta));
    } else if (isInserting) {
      context.missing(_searchTermMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Trivia map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Trivia(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      searchTerm: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}search_term'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
    );
  }

  @override
  $TriviaClassTable createAlias(String alias) {
    return $TriviaClassTable(attachedDatabase, alias);
  }
}

class Trivia extends DataClass implements Insertable<Trivia> {
  final String id;
  final String searchTerm;
  final String description;
  const Trivia(
      {required this.id, required this.searchTerm, required this.description});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['search_term'] = Variable<String>(searchTerm);
    map['description'] = Variable<String>(description);
    return map;
  }

  TriviaClassCompanion toCompanion(bool nullToAbsent) {
    return TriviaClassCompanion(
      id: Value(id),
      searchTerm: Value(searchTerm),
      description: Value(description),
    );
  }

  factory Trivia.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Trivia(
      id: serializer.fromJson<String>(json['Id']),
      searchTerm: serializer.fromJson<String>(json['SearchTerm']),
      description: serializer.fromJson<String>(json['Description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'Id': serializer.toJson<String>(id),
      'SearchTerm': serializer.toJson<String>(searchTerm),
      'Description': serializer.toJson<String>(description),
    };
  }

  Trivia copyWith({String? id, String? searchTerm, String? description}) =>
      Trivia(
        id: id ?? this.id,
        searchTerm: searchTerm ?? this.searchTerm,
        description: description ?? this.description,
      );
  @override
  String toString() {
    return (StringBuffer('Trivia(')
          ..write('id: $id, ')
          ..write('searchTerm: $searchTerm, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, searchTerm, description);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Trivia &&
          other.id == this.id &&
          other.searchTerm == this.searchTerm &&
          other.description == this.description);
}

class TriviaClassCompanion extends UpdateCompanion<Trivia> {
  final Value<String> id;
  final Value<String> searchTerm;
  final Value<String> description;
  const TriviaClassCompanion({
    this.id = const Value.absent(),
    this.searchTerm = const Value.absent(),
    this.description = const Value.absent(),
  });
  TriviaClassCompanion.insert({
    required String id,
    required String searchTerm,
    required String description,
  })  : id = Value(id),
        searchTerm = Value(searchTerm),
        description = Value(description);
  static Insertable<Trivia> custom({
    Expression<String>? id,
    Expression<String>? searchTerm,
    Expression<String>? description,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (searchTerm != null) 'search_term': searchTerm,
      if (description != null) 'description': description,
    });
  }

  TriviaClassCompanion copyWith(
      {Value<String>? id,
      Value<String>? searchTerm,
      Value<String>? description}) {
    return TriviaClassCompanion(
      id: id ?? this.id,
      searchTerm: searchTerm ?? this.searchTerm,
      description: description ?? this.description,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (searchTerm.present) {
      map['search_term'] = Variable<String>(searchTerm.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TriviaClassCompanion(')
          ..write('id: $id, ')
          ..write('searchTerm: $searchTerm, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $TriviaClassTable triviaClass = $TriviaClassTable(this);
  late final TriviaDao triviaDao = TriviaDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [triviaClass];
}
