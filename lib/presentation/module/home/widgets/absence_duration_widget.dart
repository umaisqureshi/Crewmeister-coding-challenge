import 'package:crewmeister_coding_challenge/presentation/presentation.dart';

class AbsenceDurationWidget extends StatelessWidget {
  final String start;
  final String end;
  const AbsenceDurationWidget(
      {super.key, required this.start, required this.end});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.calendar_month,
          color: context.appColorScheme.onSecondary,
          size: 15,
        ),
        const SizedBox(
          width: 3,
        ),
        Text(
          "${DateFormatter.convertDateFormat(start)} - ${DateFormatter.convertDateFormat(end)}",
          style: GoogleFonts.inter(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: context.appColorScheme.onSecondary),
        )
      ],
    );
  }
}
