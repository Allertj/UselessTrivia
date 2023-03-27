// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/cupertino.dart' as _i6;
import 'package:flutter/material.dart' as _i5;
import 'package:useless_trivia/presentation/pages/google_maps/map_page_main.dart'
    as _i1;
import 'package:useless_trivia/presentation/pages/read_page/read_page_main.dart'
    as _i2;
import 'package:useless_trivia/presentation/pages/request_page/request_page_main.dart'
    as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    MapRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.MapPage(),
      );
    },
    ReadRoute.name: (routeData) {
      final args = routeData.argsAs<ReadRouteArgs>();
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.ReadPage(
          key: args.key,
          title: args.title,
          htmlString: args.htmlString,
        ),
      );
    },
    RequestRoute.name: (routeData) {
      final args = routeData.argsAs<RequestRouteArgs>(
          orElse: () => const RequestRouteArgs());
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.RequestPage(key: args.key),
      );
    },
  };
}

/// generated route for
/// [_i1.MapPage]
class MapRoute extends _i4.PageRouteInfo<void> {
  const MapRoute({List<_i4.PageRouteInfo>? children})
      : super(
          MapRoute.name,
          initialChildren: children,
        );

  static const String name = 'MapRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ReadPage]
class ReadRoute extends _i4.PageRouteInfo<ReadRouteArgs> {
  ReadRoute({
    _i6.Key? key,
    required String title,
    required String htmlString,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          ReadRoute.name,
          args: ReadRouteArgs(
            key: key,
            title: title,
            htmlString: htmlString,
          ),
          initialChildren: children,
        );

  static const String name = 'ReadRoute';

  static const _i4.PageInfo<ReadRouteArgs> page =
      _i4.PageInfo<ReadRouteArgs>(name);
}

class ReadRouteArgs {
  const ReadRouteArgs({
    this.key,
    required this.title,
    required this.htmlString,
  });

  final _i6.Key? key;

  final String title;

  final String htmlString;

  @override
  String toString() {
    return 'ReadRouteArgs{key: $key, title: $title, htmlString: $htmlString}';
  }
}

/// generated route for
/// [_i3.RequestPage]
class RequestRoute extends _i4.PageRouteInfo<RequestRouteArgs> {
  RequestRoute({
    _i6.Key? key,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          RequestRoute.name,
          args: RequestRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'RequestRoute';

  static const _i4.PageInfo<RequestRouteArgs> page =
      _i4.PageInfo<RequestRouteArgs>(name);
}

class RequestRouteArgs {
  const RequestRouteArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'RequestRouteArgs{key: $key}';
  }
}
