// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<HomeDetailsRouteArgs>();
      return AutoRoutePage<bool>(
        routeData: routeData,
        child: HomeDetailsView(
          details: args.details,
          key: args.key,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeView(),
      );
    },
  };
}

/// generated route for
/// [HomeDetailsView]
class HomeDetailsRoute extends PageRouteInfo<HomeDetailsRouteArgs> {
  HomeDetailsRoute({
    required String details,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          HomeDetailsRoute.name,
          args: HomeDetailsRouteArgs(
            details: details,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'HomeDetailsRoute';

  static const PageInfo<HomeDetailsRouteArgs> page =
      PageInfo<HomeDetailsRouteArgs>(name);
}

class HomeDetailsRouteArgs {
  const HomeDetailsRouteArgs({
    required this.details,
    this.key,
  });

  final String details;

  final Key? key;

  @override
  String toString() {
    return 'HomeDetailsRouteArgs{details: $details, key: $key}';
  }
}

/// generated route for
/// [HomeView]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
