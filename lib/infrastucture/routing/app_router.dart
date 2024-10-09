import 'package:crewmeister_coding_challenge/infrastucture/infrastucture.dart';
import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRouteProvider.page,
          initial: true,
        )
      ];
}
