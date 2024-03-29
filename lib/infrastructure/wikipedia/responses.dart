import 'package:json_annotation/json_annotation.dart';
part 'responses.g.dart';

@JsonSerializable()
class WikipediaResponse {
  String extract;

  WikipediaResponse(this.extract);

  factory WikipediaResponse.fromJson(Map<String, dynamic> json) => _$WikipediaResponseFromJson(json);
  Map<String, dynamic> toJson() => _$WikipediaResponseToJson(this);
}

@JsonSerializable()
class WikipediaMobileSectionResponse {
  List<Section> sections;

  WikipediaMobileSectionResponse(this.sections);

  factory WikipediaMobileSectionResponse.fromJson(Map<String, dynamic> json) => _$WikipediaMobileSectionResponseFromJson(json);
  Map<String, dynamic> toJson() => _$WikipediaMobileSectionResponseToJson(this);
}

@JsonSerializable()
class Section {
  int id;
  String? text;
  Section(this.id, this.text);

  factory Section.fromJson(Map<String, dynamic> json) => _$SectionFromJson(json);
  Map<String, dynamic> toJson() => _$SectionToJson(this);
}