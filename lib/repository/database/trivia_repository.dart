import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:useless_trivia/domain/i_trivia_repository.dart';

import '../../model/trivia.dart';

class DatabaseRepository implements ITriviaRepository {
  Future<Database> getDatabase() async {
    WidgetsFlutterBinding.ensureInitialized();
    final database = openDatabase(
      join(await getDatabasesPath(), 'trivia_database1.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE trivia(id STRING PRIMARY KEY, year INTEGER, description TEXT)',
        );
      },
      version: 1,
    );
    return database;
  }

  @override
  Future<void> insert(Trivia trivia) async {
    final db = await getDatabase();

    await db.insert(
      'trivia',
      trivia.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  @override
  Future<void> update(Trivia trivia) async {
    final db = await getDatabase();

    await db.update(
      'trivia',
      trivia.toMap(),
      where: 'id = ?',
      whereArgs: [trivia.id],
    );
  }

  @override
  Future<void> delete(int id) async {
    final db = await getDatabase();

    await db.delete(
      'trivia',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  @override
  Future<List<Trivia>> getAll() async {
    final db = await getDatabase();
    var result = await db.query("trivia");
    return result.map((item) => Trivia.fromMap(item)).toList();
  }

  @override
  Future<Trivia?> getOne(int id) async {
    final db = await getDatabase();
    var result = await db.query(
      'trivia',
      where: 'id = ?',
      whereArgs: [id],
    );
    return Trivia.fromMap(result.first);
  }
}
