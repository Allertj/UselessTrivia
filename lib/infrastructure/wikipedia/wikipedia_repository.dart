import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:useless_trivia/infrastructure/wikipedia/responses.dart';
import 'package:useless_trivia/infrastructure/wikipedia/wikipedia_chopper.dart';
import 'package:uuid/uuid.dart';
import 'package:injectable/injectable.dart';

import '../../domain/wikipedia/i_wikipedia_repository.dart';
import 'wikipedia_failure.dart';
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
    try {
      final wikiService = chopper.getService<WikipediaService>();
      final Response<WikipediaMobileSectionResponse> wikipediaResponse = await wikiService.getMobileSectionLead(year);
      try {
        if (wikipediaResponse.isSuccessful) {
          return right(Trivia(
              id: const Uuid().v4(),
              searchTerm: year.toString(),
              description: wikipediaResponse.body!.sections.toString()));
        } else {
          return left(FileNotFound("Article not found"));
        }
      } catch (e) {
        return left(Unexpected("Unknown error"));
      }
    } catch (e) {
      return left(ServerError("Server not reachable"));
    }
  }

  @override
  Future<Either<WikipediaFailure, Trivia>> getMobileSectionLeadByString(
      String searchTerm) async {
    try {
      final wikiService = chopper.getService<WikipediaService>();
      final Response<WikipediaMobileSectionResponse> wikipediaResponse = await wikiService.getMobileSectionLeadByString(searchTerm);
      try {
        if (wikipediaResponse.isSuccessful) {
          var sec = wikipediaResponse.body!.sections;
          var result = sec.map((e) => e.text);
          result.toString();
          return right(Trivia(
              id: const Uuid().v4(),
              searchTerm: searchTerm,
              description: result.toString()));
        } else {
          return left(FileNotFound("Article not found"));
        }
      } catch (e) {
        return left(Unexpected("Unknown error"));
      }
    } catch (e) {
      return left(ServerError("Server not reachable"));
    }
  }

  @override
  Future<Either<WikipediaFailure, Trivia>> getTrivia(int year) async {
    try {
      final wikiService = chopper.getService<WikipediaService>();
      final Response<WikipediaResponse> wikipediaResponse = await wikiService.getTriviaByString(year.toString());
      try {
        if (wikipediaResponse.isSuccessful) {
          return right(Trivia(
              id: const Uuid().v4(),
              searchTerm: year.toString(),
              description: wikipediaResponse.body!.extract));
        } else {
          return left(FileNotFound("Article not found"));
        }
      } catch (e) {
        return left(Unexpected("Unknown error"));
      }
    } catch (e) {
      return left(ServerError("Server not reachable"));
    }
  }

  @override
  Future<Either<WikipediaFailure, Trivia>> getTriviaByString(
      String searchTerm) async {
    try {
      final wikiService = chopper.getService<WikipediaService>();
      final Response<WikipediaResponse> wikipediaResponse = await wikiService.getTriviaByString(searchTerm);
      try {
        if (wikipediaResponse.isSuccessful) {
          return right(Trivia(
              id: const Uuid().v4(),
              searchTerm: searchTerm,
              description: wikipediaResponse.body!.extract));
        } else {
          return left(FileNotFound("Article not found"));
        }
      } catch (e) {
        return left(Unexpected("Unknown error"));
      }
    } catch (e) {
      return left(ServerError("Server not reachable"));
    }
  }

  @override
  Future<Response> getHtml(String searchTerm) {
    final wikiService = chopper.getService<WikipediaService>();
    return wikiService.getHtml(searchTerm);
  }
 }
