// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WikipediaResponse _$WikipediaResponseFromJson(Map<String, dynamic> json) =>
    WikipediaResponse(
      json['extract'] as String,
    );

Map<String, dynamic> _$WikipediaResponseToJson(WikipediaResponse instance) =>
    <String, dynamic>{
      'extract': instance.extract,
    };

WikipediaMobileSectionResponse _$WikipediaMobileSectionResponseFromJson(
        Map<String, dynamic> json) =>
    WikipediaMobileSectionResponse(
      (json['sections'] as List<dynamic>)
          .map((e) => Section.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WikipediaMobileSectionResponseToJson(
        WikipediaMobileSectionResponse instance) =>
    <String, dynamic>{
      'sections': instance.sections,
    };

Section _$SectionFromJson(Map<String, dynamic> json) => Section(
      json['id'] as int,
      json['text'] as String?,
    );

Map<String, dynamic> _$SectionToJson(Section instance) => <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
    };
