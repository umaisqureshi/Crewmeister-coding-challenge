import 'package:crewmeister_coding_challenge/application/application.dart';
class ThemeStuff {
  static ThemeStuff? _instance;

  static ThemeStuff get instance {
    _instance ??= ThemeStuff._init();

    return _instance!;
  }

  ThemeStuff._init() {
    theme.value = AppColorScheme.light();
  }

  ValueNotifier<ColorScheme> theme =
      ValueNotifier<ColorScheme>(AppColorScheme.light());

  void updateValue(ColorScheme colorScheme) {
    theme.value = colorScheme;
  }
}
