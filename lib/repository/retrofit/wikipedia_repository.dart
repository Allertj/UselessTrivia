import 'package:chopper/chopper.dart';
import 'package:useless_trivia/repository/retrofit/responses.dart';
import 'package:useless_trivia/repository/retrofit/wikipedia_chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:uuid/uuid.dart';
import 'package:injectable/injectable.dart';

import '../../domain/i_wikipedia_client.dart';
import '../../domain/wikipedia_failure.dart';
import '../database/database.dart';

@Injectable(as: IWikipediaRepository)
class WikipediaRepository implements IWikipediaRepository {
  final chopper = ChopperClient(
    baseUrl: Uri.parse("https://en.wikipedia.org/api/rest_v1/page/"),
    services: [
      // Create and pass an instance of the generated service to the client
      WikipediaService.create()
    ],
  );

  @override
  Future<Either<WikipediaFailure, Trivia>> getMobileSectionLead(int year) async {

      final wikiService = chopper.getService<WikipediaService>();
      final Response response = await wikiService.getTrivia(year);
      if (response.isSuccessful) {
          try {
            WikipediaMobileSectionResponse res = response.body;
            return right(Trivia(
                id: const Uuid().v4(),
                searchTerm: year.toString(),
                description: res.sections.toString()));
          } catch (e) {
              return left(const WikipediaFailure.serverError());
          }
      } else {
        return left(const WikipediaFailure.serverError());
      }

  }

  @override
  Future<Either<WikipediaFailure, Trivia>> getMobileSectionLeadByString(String searchTerm) async {
    try {
      final wikiService = chopper.getService<WikipediaService>();
      final Response response = await wikiService.getMobileSectionLeadByString(searchTerm);
      final WikipediaMobileSectionResponse res = response.body;
      try {
        return right(Trivia(
            id: const Uuid().v4(),
            searchTerm: searchTerm,
            description: res.sections.toString()));
      } catch (e) {
        return left(const WikipediaFailure.unexpected());
      }
    } catch (e) {
      return left(const WikipediaFailure.serverError());
    }
  }

  @override
  Future<Either<WikipediaFailure, Trivia>> getTrivia(int year) async {
    try {
      final wikiService = chopper.getService<WikipediaService>();
      final Response response = await wikiService.getTrivia(year);
      final WikipediaResponse res = response.body;
      try {
        return right(Trivia(
            id: const Uuid().v4(),
            searchTerm: year.toString(),
            description: res.extract));
      } catch (e) {
        return left(const WikipediaFailure.unexpected());
      }
    } catch (e) {
      return left(const WikipediaFailure.serverError());
    }
  }

  @override
  Future<Either<WikipediaFailure, Trivia>> getTriviaByString(
      String searchTerm) async {
    try {
      final wikiService = chopper.getService<WikipediaService>();
      final Response response = await wikiService.getTriviaByString(searchTerm);
      final WikipediaResponse response1 = response.body;
      try {
        return right(Trivia(
            id: const Uuid().v4(),
            searchTerm: searchTerm,
            description: response1.extract));
      } catch (e) {
        return left(const WikipediaFailure.unexpected());
      }
    } catch (e) {
      return left(const WikipediaFailure.serverError());
    }
  }
}
