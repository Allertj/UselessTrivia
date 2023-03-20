import 'package:dartz/dartz.dart';
import 'package:useless_trivia/domain/wikipedia_failure.dart';
import 'package:useless_trivia/repository/database/database.dart';

abstract class IWikipediaRepository {
  Future<Either<WikipediaFailure, Trivia>> getTrivia(int year);
  Future<Either<WikipediaFailure, Trivia>> getTriviaByString(String searchTerm);
  Future<Either<WikipediaFailure, Trivia>> getMobileSectionLead(int year);
  Future<Either<WikipediaFailure, Trivia>> getMobileSectionLeadByString(String searchTerm);
}
