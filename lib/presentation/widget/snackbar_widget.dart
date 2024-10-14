import 'package:crewmeister_coding_challenge/presentation/presentation.dart';

SnackBar getSnackBar(BuildContext context, String message) {
  return SnackBar(
      backgroundColor: context.appColorScheme.primary,
      content: Text(
        message,
        style: TextStyle(color: context.appColorScheme.backgroundColor),
      ));
}
