import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'wikipedia_client.g.dart';

@RestApi(baseUrl: 'https://en.wikipedia.org/api/rest_v1/page/')
abstract class WikipediaClient {
  factory WikipediaClient(Dio dio, {String baseUrl}) = _WikipediaClient;

  @GET('/summary/{year}')
  Future<WikipediaResponse> getTrivia({
    @Path('year') required int year,
  });

  @GET('/mobile-sections-lead/{year}')
  Future<WikipediaMobileSectionResponse> getMobileSectionLead({
    @Path('year') required int year,
  });

}


@JsonSerializable()
class WikipediaResponse {
  String extract;

  WikipediaResponse({required this.extract});

  factory WikipediaResponse.fromJson(Map<String, dynamic> json) => _$WikipediaResponseFromJson(json);
  Map<String, dynamic> toJson() => _$WikipediaResponseToJson(this);
}

@JsonSerializable()
class WikipediaMobileSectionResponse {
  List<Section> sections;

  WikipediaMobileSectionResponse({required this.sections});

  factory WikipediaMobileSectionResponse.fromJson(Map<String, dynamic> json) => _$WikipediaMobileSectionResponseFromJson(json);
  Map<String, dynamic> toJson() => _$WikipediaMobileSectionResponseToJson(this);
}

@JsonSerializable()
class Section {
  int id;
  String? text;
  Section({required this.id, required this.text});

  factory Section.fromJson(Map<String, dynamic> json) => _$SectionFromJson(json);
  Map<String, dynamic> toJson() => _$SectionToJson(this);
}