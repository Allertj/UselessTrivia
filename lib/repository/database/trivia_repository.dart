import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:useless_trivia/domain/database_repository.dart';

import '../../model/trivia.dart';

class SQFLiteRepository implements DatabaseRepository {
  static String firstTable = "trivia";

  Future<Database> getDatabase() async {
    WidgetsFlutterBinding.ensureInitialized();
    final database = openDatabase(
      join(await getDatabasesPath(), 'trivia_database1.db'),
      onCreate: (db, version) async {
        await db.execute(
            'CREATE TABLE $firstTable(id STRING PRIMARY KEY, searchTerm STRING, description TEXT)'
        );
        await db.execute(
            'CREATE TABLE vehicle(trackedObjectId INTEGER PRIMARY KEY, identification STRING, kenteken STRING, street STRING, city STRING, countryCode STRING, deviceId STRING, speed REAL, latitude REAL, longitude REAL, directionText STRING, direction INTEGER, statusCode STRING, activityChangeTime STRING, activityName STRING, activityIcon STRING, timestampUTC STRING, employeeId INTEGER, employeeName STRING, employeePhone STRING, employeeDriverCardId STRING, trailerName STRING)'
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
