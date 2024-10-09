import 'package:crewmeister_coding_challenge/infrastucture/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'infrastucture/di/app_dependency.dart';
import 'package:google_fonts/google_fonts.dart';

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

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Crewmeister',
      theme: ThemeData(
          useMaterial3: true, textTheme: GoogleFonts.openSansTextTheme()),
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter.config(),
    );
  }
}
