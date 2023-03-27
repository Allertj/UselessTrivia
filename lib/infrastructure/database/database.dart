import 'package:drift/drift.dart';
import 'dart:io';

import 'package:drift/native.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:useless_trivia/domain/database/trivia_dao.dart';

part 'database.g.dart';

@DataClassName("Trivia")
class TriviaClass extends Table {
  @JsonKey("Id")
  TextColumn get id => text()();
  @JsonKey("SearchTerm")
  TextColumn get searchTerm => text()();
  @JsonKey("Description")
  TextColumn get description => text()();

  @override
  Set<Column> get primaryKey => {id};
}

@singleton
@DriftDatabase(tables: [TriviaClass], daos: [TriviaDao])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}