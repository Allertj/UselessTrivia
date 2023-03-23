import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:useless_trivia/presentation/routes/router.gr.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends $AppRouter {

  @override
  final List<AutoRoute> routes = [
    AutoRoute(path: '/', page: RequestRoute.page),
    AutoRoute(path: '/google_maps', page: MapRoute.page),
    AutoRoute(path: '/alternative_map', page: AlternativeMapRoute.page),
    AutoRoute(path: '/dashboard', page: DashboardRoute.page),
    AutoRoute(path: '/readarticle', page: ReadRoute.page),
  ];
}
