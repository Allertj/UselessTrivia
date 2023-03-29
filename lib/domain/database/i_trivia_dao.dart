import '../../infrastructure/database/database.dart';

abstract class ITriviaDao  {
  Future insertTrivia(Trivia newTrivia);
  Future<void> deleteTrivia(Trivia trivia1);
  Future<void> deleteTriviaBySearchTerm(String searchTerm);
  Future<List<Trivia>> selectAllTrivia();
  Future<List<Trivia>> findTrivia(String searchTerm);
  Stream<List<Trivia>> watchAllTrivia();
}