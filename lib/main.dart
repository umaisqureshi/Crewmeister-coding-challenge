import 'package:crewmeister_coding_challenge/presentation/presentation.dart';
import 'package:flutter/services.dart';
import 'infrastucture/di/app_dependency.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await createDependencyGraph();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class ThemeNotifier extends ValueNotifier<ThemeData> {
  ThemeNotifier(super.value);
  void updateTheme(ColorScheme colorScheme) {
    value = ThemeData(colorScheme: colorScheme);
    notifyListeners();
  }
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
          title: 'Crewmeister',
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
