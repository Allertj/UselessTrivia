import 'package:drift/drift.dart';
import 'dart:io';

import 'package:drift/native.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:useless_trivia/infrastructure/database/dao/trivia_dao.dart';
import 'package:useless_trivia/infrastructure/database/table/trivia_class.dart';

part 'database.g.dart';

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