// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wikipedia_chopper.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$WikipediaService extends WikipediaService {
  _$WikipediaService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = WikipediaService;

  @override
  Future<Response<WikipediaResponse>> getTrivia(int year) {
    final Uri $url = Uri.parse('/summary/${year}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<WikipediaResponse, WikipediaResponse>($request);
  }

  @override
  Future<Response<WikipediaResponse>> getTriviaByString(String searchTerm) {
    final Uri $url = Uri.parse('/summary/${searchTerm}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<WikipediaResponse, WikipediaResponse>($request);
  }

  @override
  Future<Response<WikipediaMobileSectionResponse>> getMobileSectionLead(
      int year) {
    final Uri $url = Uri.parse('/mobile-sections-lead/${year}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<WikipediaMobileSectionResponse,
        WikipediaMobileSectionResponse>($request);
  }

  @override
  Future<Response<WikipediaMobileSectionResponse>> getMobileSectionLeadByString(
      String searchTerm) {
    final Uri $url = Uri.parse('/mobile-sections-lead/${searchTerm}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<WikipediaMobileSectionResponse,
        WikipediaMobileSectionResponse>($request);
  }
}
