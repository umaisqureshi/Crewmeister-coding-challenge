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
        const Icon(
          Icons.calendar_month,
          color: Colors.grey,
          size: 15,
        ),
        const SizedBox(
          width: 3,
        ),
        Text(
          "${DateFormatter.convertDateFormat(start)} - ${DateFormatter.convertDateFormat(end)}",
          style: GoogleFonts.aBeeZee(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600]),
        )
      ],
    );
  }
}
