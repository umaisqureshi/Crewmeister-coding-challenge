import 'package:crewmeister_coding_challenge/presentation/theme/app_theme.dart';
import 'package:flutter/material.dart';
extension ContextExtensions on BuildContext {
  AppColorScheme get appColorScheme =>
      Theme.of(this).brightness == Brightness.light
          ? AppColorScheme.light()
          : AppColorScheme.dark();

  TextTheme get textTheme => Theme.of(this).textTheme;
  Size get screenSize => MediaQuery.of(this).size;
}