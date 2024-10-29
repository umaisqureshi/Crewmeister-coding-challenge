import 'package:crewmeister_coding_challenge/application/application.dart';
import 'package:crewmeister_coding_challenge/application/bloc/global_cubit.dart';
import 'package:crewmeister_coding_challenge/application/routing/app_router.dart';
import 'package:crewmeister_coding_challenge/di/app_dependency.dart';
import 'package:crewmeister_coding_challenge/presentation/presentation.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: await getApplicationDocumentsDirectory());
  await createDependencyGraph();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AppRouter appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GlobalCubit(),
      child: BlocBuilder<GlobalCubit, AppColorScheme>(
          buildWhen: (p, c) => p != c,
          builder: (context, state) {
            return MaterialApp.router(
              title: 'Absence Management',
              theme: ThemeData(
                  colorScheme: state,
                  useMaterial3: true,
                  textTheme: GoogleFonts.ralewayTextTheme()),
              debugShowCheckedModeBanner: false,
              routerConfig: appRouter.config(),
            );
          }),
    );
  }
}
