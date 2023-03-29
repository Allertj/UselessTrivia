import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

import '../database.dart';
import '../../../domain/database/i_trivia_dao.dart';
import '../table/trivia_class.dart';
part 'trivia_dao.g.dart';

@LazySingleton(as: ITriviaDao)
@DriftAccessor(tables: [TriviaClass])
class TriviaDao extends DatabaseAccessor<AppDatabase> with _$TriviaDaoMixin implements ITriviaDao {
  final AppDatabase _database;
  TriviaDao(this._database) : super(_database);

  @override
  Future insertTrivia(Trivia newTrivia) => into(triviaClass).insert(newTrivia);
  @override
  Future<void> deleteTrivia(Trivia trivia1) => delete(triviaClass).delete(trivia1);
  @override
  Future<void> deleteTriviaBySearchTerm(String searchTerm) => (delete(triviaClass)..where((t) => t.searchTerm.equals(searchTerm))).go();
  @override
  Future<List<Trivia>> selectAllTrivia() => select(triviaClass).get();
  @override
  Future<List<Trivia>> findTrivia(String searchTerm) => (select(triviaClass)..where((t) => t.searchTerm.equals(searchTerm))).get();
  @override
  Stream<List<Trivia>> watchAllTrivia() => select(triviaClass).watch();
 }