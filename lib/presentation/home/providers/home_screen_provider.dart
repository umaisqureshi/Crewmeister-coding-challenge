import 'package:crewmeister_coding_challenge/presentation/presentation.dart';

@RoutePage()
class HomeScreenProvider extends StatefulWidget {
  const HomeScreenProvider({super.key});

  @override
  State<HomeScreenProvider> createState() => _HomeScreenProviderState();
}

class _HomeScreenProviderState extends State<HomeScreenProvider> {
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
