// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/cupertino.dart' as _i8;
import 'package:flutter/material.dart' as _i7;
import 'package:useless_trivia/presentation/pages/dashboard_page/dashboard_page.dart'
    as _i1;
import 'package:useless_trivia/presentation/pages/google_maps/map_page_main.dart'
    as _i2;
import 'package:useless_trivia/presentation/pages/read_page/read_page_main.dart'
    as _i5;
import 'package:useless_trivia/presentation/pages/request_page/request_page_main.dart'
    as _i3;
import 'package:useless_trivia/presentation/pages/streepmap/streetmap.dart'
    as _i4;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    DashboardRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.DashboardPage(),
      );
    },
    MapRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.MapPage(),
      );
    },
    RequestRoute.name: (routeData) {
      final args = routeData.argsAs<RequestRouteArgs>(
          orElse: () => const RequestRouteArgs());
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.RequestPage(key: args.key),
      );
    },
    AlternativeMapRoute.name: (routeData) {
      final args = routeData.argsAs<AlternativeMapRouteArgs>(
          orElse: () => const AlternativeMapRouteArgs());
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.AlternativeMapPage(key: args.key),
      );
    },
    ReadRoute.name: (routeData) {
      final args = routeData.argsAs<ReadRouteArgs>();
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.ReadPage(
          key: args.key,
          htmlString: args.htmlString,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.DashboardPage]
class DashboardRoute extends _i6.PageRouteInfo<void> {
  const DashboardRoute({List<_i6.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.MapPage]
class MapRoute extends _i6.PageRouteInfo<void> {
  const MapRoute({List<_i6.PageRouteInfo>? children})
      : super(
          MapRoute.name,
          initialChildren: children,
        );

  static const String name = 'MapRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.RequestPage]
class RequestRoute extends _i6.PageRouteInfo<RequestRouteArgs> {
  RequestRoute({
    _i8.Key? key,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          RequestRoute.name,
          args: RequestRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'RequestRoute';

  static const _i6.PageInfo<RequestRouteArgs> page =
      _i6.PageInfo<RequestRouteArgs>(name);
}

class RequestRouteArgs {
  const RequestRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'RequestRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.AlternativeMapPage]
class AlternativeMapRoute extends _i6.PageRouteInfo<AlternativeMapRouteArgs> {
  AlternativeMapRoute({
    _i8.Key? key,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          AlternativeMapRoute.name,
          args: AlternativeMapRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AlternativeMapRoute';

  static const _i6.PageInfo<AlternativeMapRouteArgs> page =
      _i6.PageInfo<AlternativeMapRouteArgs>(name);
}

class AlternativeMapRouteArgs {
  const AlternativeMapRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'AlternativeMapRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.ReadPage]
class ReadRoute extends _i6.PageRouteInfo<ReadRouteArgs> {
  ReadRoute({
    _i8.Key? key,
    required String htmlString,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          ReadRoute.name,
          args: ReadRouteArgs(
            key: key,
            htmlString: htmlString,
          ),
          initialChildren: children,
        );

  static const String name = 'ReadRoute';

  static const _i6.PageInfo<ReadRouteArgs> page =
      _i6.PageInfo<ReadRouteArgs>(name);
}

class ReadRouteArgs {
  const ReadRouteArgs({
    this.key,
    required this.htmlString,
  });

  final _i8.Key? key;

  final String htmlString;

  @override
  String toString() {
    return 'ReadRouteArgs{key: $key, htmlString: $htmlString}';
  }
}
