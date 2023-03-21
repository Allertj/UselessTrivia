import 'package:chopper/chopper.dart';
import 'package:useless_trivia/repository/retrofit/responses.dart';
import 'package:useless_trivia/repository/retrofit/wikipedia_chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:uuid/uuid.dart';
import 'package:injectable/injectable.dart';

import '../../domain/i_wikipedia_client.dart';
import '../../domain/wikipedia_failure.dart';
import '../../util/json_converter.dart';
import '../database/database.dart';

@LazySingleton(as: IWikipediaRepository)
class WikipediaRepository implements IWikipediaRepository {
  final chopper = ChopperClient(
    baseUrl: Uri.parse("https://en.wikipedia.org/api/rest_v1/page"),
    services: [WikipediaService.create()],
    converter: JsonToTypeConverter(
      {
        WikipediaResponse: (Map<String, dynamic> json) => WikipediaResponse.fromJson(json),
        WikipediaMobileSectionResponse: (Map<String, dynamic> json) => WikipediaMobileSectionResponse.fromJson(json),
      },
    ),
  );

  @override
  Future<Either<WikipediaFailure, Trivia>> getMobileSectionLead(
      int year) async {

    final wikiService = chopper.getService<WikipediaService>();
    final Response<WikipediaMobileSectionResponse> wikipediaResponse = await wikiService.getMobileSectionLeadByString(year.toString());

    if (wikipediaResponse.isSuccessful) {
        try {
          WikipediaMobileSectionResponse? res = wikipediaResponse.body;
          return right(Trivia(
              id: const Uuid().v4(),
              searchTerm: year.toString(),
              description: res?.sections.toString()));
        } catch (e) {
            return left(const WikipediaFailure.unexpected());
        }
    } else {
    return left(const WikipediaFailure.serverError());
    }
  }

  @override
  Future<Either<WikipediaFailure, Trivia>> getMobileSectionLeadByString(
      String searchTerm) async {
    try {
      final wikiService = chopper.getService<WikipediaService>();
      final Response<WikipediaMobileSectionResponse> wikipediaResponse = await wikiService.getMobileSectionLeadByString(searchTerm);
      try {
        return right(Trivia(
            id: const Uuid().v4(),
            searchTerm: searchTerm,
            description: wikipediaResponse.body?.sections.toString()));
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
      final Response<WikipediaResponse> wikipediaResponse = await wikiService.getTriviaByString(year.toString());
      try {
        return right(Trivia(
            id: const Uuid().v4(),
            searchTerm: year.toString(),
            description: wikipediaResponse.body?.extract));
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
      final Response<WikipediaResponse> wikipediaResponse = await wikiService.getTriviaByString(searchTerm);
      try {
        return right(Trivia(
            id: const Uuid().v4(),
            searchTerm: searchTerm,
            description: wikipediaResponse.body?.extract));
      } catch (e) {
        return left(const WikipediaFailure.unexpected());
      }
    } catch (e) {
      return left(const WikipediaFailure.serverError());
    }
  }
}
