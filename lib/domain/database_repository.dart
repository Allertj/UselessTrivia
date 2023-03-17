import '../model/trivia.dart';

abstract class DatabaseRepository {
  Future<List<Trivia>> getAll();
  Future<Trivia?> getOne(int id);
  Future<void> insert(Trivia trivia);
  Future<void> update(Trivia trivia);
  Future<void> delete(int id);
}