import 'package:crewmeister_coding_challenge/presentation/presentation.dart';

class EmptyListWidget extends StatelessWidget {
  const EmptyListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "No absence found",
        style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w900,
            color: context.appColorScheme.onSecondary),
      ),
    );
  }
}
