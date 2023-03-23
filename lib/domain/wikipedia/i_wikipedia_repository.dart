import 'package:dartz/dartz.dart';

import '../../infrastructure/database/database.dart';
import '../../infrastructure/wikipedia/wikipedia_failure.dart';


abstract class IWikipediaRepository {
  Future<Either<WikipediaFailure, Trivia>> getTrivia(int year);
  Future<Either<WikipediaFailure, Trivia>> getTriviaByString(String searchTerm);
  Future<Either<WikipediaFailure, Trivia>> getMobileSectionLead(int year);
  Future<Either<WikipediaFailure, Trivia>> getMobileSectionLeadByString(String searchTerm);
}
