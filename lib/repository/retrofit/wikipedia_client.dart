import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:useless_trivia/repository/retrofit/responses.dart';

part 'wikipedia_client.g.dart';

@RestApi(baseUrl: 'https://en.wikipedia.org/api/rest_v1/page/')
abstract class WikipediaClient {
  factory WikipediaClient(Dio dio, {String baseUrl}) = _WikipediaClient;

  @GET('/summary/{year}')
  Future<WikipediaResponse> getTrivia({
    @Path('year') required int year,
  });

  @GET('/summary/{search_term}')
  Future<WikipediaResponse> getTriviaByString({
    @Path('search_term') required String searchTerm,
  });

  @GET('/mobile-sections-lead/{year}')
  Future<WikipediaMobileSectionResponse> getMobileSectionLead({
    @Path('year') required int year,
  });

  @GET('/mobile-sections-lead/{year}')
  Future<WikipediaMobileSectionResponse> getMobileSectionLeadByString({
    @Path('search_term') required String searchTerm,
  });
}