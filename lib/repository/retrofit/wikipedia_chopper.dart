import "dart:async";
import 'package:chopper/chopper.dart';
import 'package:useless_trivia/repository/retrofit/responses.dart';

// This is necessary for the generator to work.
part "wikipedia_chopper.chopper.dart";

@ChopperApi(baseUrl: "/summary")
abstract class WikipediaService extends ChopperService {

  // A helper method that helps instantiating the service. You can omit this method and use the generated class directly instead.
  static WikipediaService create([ChopperClient? client]) => _$WikipediaService(client);

  @Get(path: '/summary/{year}')
  Future<Response> getTrivia(@Query("year") int year);

  @Get(path: '/summary/{searchTerm}')
  Future<Response> getTriviaByString(@Query("searchTerm") String searchTerm);

  @Get(path: '/mobile-sections-lead/{year}')
  Future<Response> getMobileSectionLead(@Query("year") int year);

  @Get(path: '/mobile-sections-lead/{searchTerm}')
  Future<Response> getMobileSectionLeadByString(@Query("searchTerm") String searchTerm);

}