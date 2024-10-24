import 'package:crewmeister_coding_challenge/application/routing/app_router.dart';
import 'package:crewmeister_coding_challenge/di/app_dependency.dart';
import 'package:crewmeister_coding_challenge/presentation/presentation.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
  ThemeStuff appValueNotifier = ThemeStuff.instance;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: appValueNotifier.theme,
      builder: (context, colorScheme, _) {
        return MaterialApp.router(
          title: 'Absence Management',
          theme: ThemeData(
              colorScheme: colorScheme,
              useMaterial3: true,
              textTheme: GoogleFonts.ralewayTextTheme()),
          debugShowCheckedModeBanner: false,
          routerConfig: appRouter.config(),
        );
      },
    );
  }
}
