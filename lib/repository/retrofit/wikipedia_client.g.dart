// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wikipedia_client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WikipediaResponse _$WikipediaResponseFromJson(Map<String, dynamic> json) =>
    WikipediaResponse(
      extract: json['extract'] as String,
    );

Map<String, dynamic> _$WikipediaResponseToJson(WikipediaResponse instance) =>
    <String, dynamic>{
      'extract': instance.extract,
    };

WikipediaMobileSectionResponse _$WikipediaMobileSectionResponseFromJson(
        Map<String, dynamic> json) =>
    WikipediaMobileSectionResponse(
      sections: (json['sections'] as List<dynamic>)
          .map((e) => Section.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WikipediaMobileSectionResponseToJson(
        WikipediaMobileSectionResponse instance) =>
    <String, dynamic>{
      'sections': instance.sections,
    };

Section _$SectionFromJson(Map<String, dynamic> json) => Section(
      id: json['id'] as int,
      text: json['text'] as String?,
    );

Map<String, dynamic> _$SectionToJson(Section instance) => <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
    };

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _WikipediaClient implements WikipediaClient {
  _WikipediaClient(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://en.wikipedia.org/api/rest_v1/page/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<WikipediaResponse> getTrivia({required year}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<WikipediaResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/summary/${year}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = WikipediaResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<WikipediaMobileSectionResponse> getMobileSectionLead(
      {required year}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<WikipediaMobileSectionResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/mobile-sections-lead/${year}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = WikipediaMobileSectionResponse.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
