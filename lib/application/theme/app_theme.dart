import 'package:crewmeister_coding_challenge/presentation/presentation.dart';

sealed class AppColorScheme extends ColorScheme {
  const AppColorScheme._light(
      {required Color primary,
      required Color onPrimary,
      required Color onSecondary,
      required Color background,
      required Color shadowColor})
      : super.light(
            primary: primary,
            onPrimary: onPrimary,
            shadow: shadowColor,
            onSecondary: onSecondary,
            background: background);

  const AppColorScheme._dark(
      {required Color primary,
      required Color onPrimary,
      required Color onSecondary,
      required Color background,
      required Color shadowColor})
      : super.dark(
            primary: primary,
            onPrimary: onPrimary,
            shadow: shadowColor,
            onSecondary: onSecondary,
            background: background);

  factory AppColorScheme.light() {
    return const _LightColorScheme._();
  }

  factory AppColorScheme.dark() {
    return const _DarkColorScheme._();
  }

  Color get backgroundColor;
}

class _LightColorScheme extends AppColorScheme {
  const _LightColorScheme._()
      : super._light(
            shadowColor: Colors.black12,
            primary: Colors.black,
            onPrimary: const Color(0xff08435A),
            onSecondary: Colors.black,
            background: const Color(0xffE5EAEA));

  @override
  final Color backgroundColor = Colors.white;
}

class _DarkColorScheme extends AppColorScheme {
  const _DarkColorScheme._()
      : super._dark(
            primary: Colors.white,
            shadowColor: Colors.white12,
            onPrimary: const Color(0xff08435A),
            onSecondary: Colors.white,
            background: Colors.black87);

  @override
  Color get backgroundColor => Colors.black;
}
