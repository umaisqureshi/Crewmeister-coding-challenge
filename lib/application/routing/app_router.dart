import 'package:crewmeister_coding_challenge/application/application.dart';
import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRouteProvider.page,
          initial: true,
        )
      ];
}
