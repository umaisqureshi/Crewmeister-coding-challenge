import 'package:crewmeister_coding_challenge/presentation/presentation.dart';

class AbsenceCountWidget extends StatelessWidget {
  final int count;
  const AbsenceCountWidget({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Absences",
            style: TextStyle(
                fontSize: 16,
                color: context.appColorScheme.primary,
                fontWeight: FontWeight.w500),
          ),
          Text(
            "$count",
            style: GoogleFonts.inter(
                fontSize: 14,
                color: context.appColorScheme.onSecondary,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
