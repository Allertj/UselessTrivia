import 'package:drift/drift.dart';
import 'package:useless_trivia/repository/database/database.dart';
part 'trivia_dao.g.dart';


@DriftAccessor(tables: [TriviaClass])
class TriviaDao extends DatabaseAccessor<MyDatabase> with _$TriviaDaoMixin {

  TriviaDao(MyDatabase db) : super(db);

  Future insertTrivia(Trivia newTrivia) => into(triviaClass).insert(newTrivia);
  Future<void> deleteTrivia(Trivia trivia1) => delete(triviaClass).delete(trivia1);
  Future<List<Trivia>> selectAllTrivia() => select(triviaClass).get();
  SingleOrNullSelectable<Trivia> findTrivia(String searchTerm) => select(triviaClass)..where((t) => t.searchTerm.equals(searchTerm));
  Stream<List<Trivia>> watchAllTrivia() => select(triviaClass).watch();
 }