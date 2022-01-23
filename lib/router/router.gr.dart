// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    InitialRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData, child: const InitialView());
    },
    HomeRoute.name: (routeData) {
      final args = routeData.argsAs<HomeRouteArgs>();
      return AdaptivePage<dynamic>(
          routeData: routeData,
          child: HomeView(key: args.key, name: args.name));
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig('/#redirect',
            path: '/', redirectTo: '/initialize', fullMatch: true),
        RouteConfig(InitialRoute.name, path: '/initialize'),
        RouteConfig(HomeRoute.name, path: '/home')
      ];
}

/// generated route for
/// [InitialView]
class InitialRoute extends PageRouteInfo<void> {
  const InitialRoute() : super(InitialRoute.name, path: '/initialize');

  static const String name = 'InitialRoute';
}

/// generated route for
/// [HomeView]
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({Key? key, required List<String> name})
      : super(HomeRoute.name,
            path: '/home', args: HomeRouteArgs(key: key, name: name));

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key, required this.name});

  final Key? key;

  final List<String> name;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key, name: $name}';
  }
}
