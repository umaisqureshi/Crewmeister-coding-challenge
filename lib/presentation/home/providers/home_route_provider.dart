import 'package:crewmeister_coding_challenge/presentation/presentation.dart';

@RoutePage()
class HomeRouteProvider extends StatefulWidget {
  const HomeRouteProvider({super.key});

  @override
  State<HomeRouteProvider> createState() => _HomeRouteProviderState();
}

class _HomeRouteProviderState extends State<HomeRouteProvider> {
  final GetIt getIt = GetIt.instance;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final bloc = HomeBloc(
          absencesUseCase: getIt.get<GetAllAbsencesUseCase>(),
          membersUseCase: getIt.get<GetAllMembersUseCase>(),
        );
        return bloc;
      },
      child: const HomeScreen(),
    );
  }
}
