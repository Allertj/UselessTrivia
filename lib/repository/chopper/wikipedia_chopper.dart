import "dart:async";
import 'package:chopper/chopper.dart';
import 'package:useless_trivia/repository/chopper/responses.dart';

part "wikipedia_chopper.chopper.dart";

@ChopperApi()
abstract class WikipediaService extends ChopperService {

  static WikipediaService create([ChopperClient? client]) => _$WikipediaService(client);

  @Get(path: '/summary/{year}')
  Future<Response<WikipediaResponse>> getTrivia(@Path("year") int year);

  @Get(path: '/summary/{searchTerm}')
  Future<Response<WikipediaResponse>>  getTriviaByString(@Path("searchTerm") String searchTerm);

  @Get(path: '/mobile-sections-lead/{year}')
  Future<Response<WikipediaMobileSectionResponse>> getMobileSectionLead(@Path("year") int year);

  @Get(path: '/mobile-sections-lead/{searchTerm}')
  Future<Response<WikipediaMobileSectionResponse>> getMobileSectionLeadByString(@Path("searchTerm") String searchTerm);

}