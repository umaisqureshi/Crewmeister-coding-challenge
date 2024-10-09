// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:crewmeister_coding_challenge/infrastucture/providers/home_screen_provider.dart'
    as _i1;

abstract class $AppRouter extends _i2.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    HomeRouteProvider.name: (routeData) {
      return _i2.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomeScreenProvider(),
      );
    }
  };
}

/// generated route for
/// [_i1.HomeScreenProvider]
class HomeRouteProvider extends _i2.PageRouteInfo<void> {
  const HomeRouteProvider({List<_i2.PageRouteInfo>? children})
      : super(
          HomeRouteProvider.name,
          initialChildren: children,
        );

  static const String name = 'HomeRouteProvider';

  static const _i2.PageInfo<void> page = _i2.PageInfo<void>(name);
}
