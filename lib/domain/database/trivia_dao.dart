import 'package:drift/drift.dart';

import '../../infrastructure/database/database.dart';
part 'trivia_dao.g.dart';


@DriftAccessor(tables: [TriviaClass])
class TriviaDao extends DatabaseAccessor<AppDatabase> with _$TriviaDaoMixin {

  TriviaDao(AppDatabase db) : super(db);

  Future insertTrivia(Trivia newTrivia) => into(triviaClass).insert(newTrivia);
  Future<void> deleteTrivia(Trivia trivia1) => delete(triviaClass).delete(trivia1);
  Future<void> deleteTriviaBySearchTerm(String searchTerm) => (delete(triviaClass)..where((t) => t.searchTerm.equals(searchTerm))).go();
  Future<List<Trivia>> selectAllTrivia() => select(triviaClass).get();
  SingleOrNullSelectable<Trivia> findTrivia(String searchTerm) => select(triviaClass)..where((t) => t.searchTerm.equals(searchTerm));
  Stream<List<Trivia>> watchAllTrivia() => select(triviaClass).watch();
 }