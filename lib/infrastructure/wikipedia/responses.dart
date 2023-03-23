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
  // Image? image;

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

// @JsonSerializable()
// class Image {
//   String? file;
//   Map<String, String>? urls;
//
//   Image({required this.file, required this.urls});
//
//   factory Image.fromJson(Map<String, dynamic> json) =>
//       _$ImageFromJson(json);
//
//   Map<String, dynamic> toJson() => _$ImageToJson(this);
// }