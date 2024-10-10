import 'package:crewmeister_coding_challenge/presentation/presentation.dart';

class AbsenceTypeWidget extends StatelessWidget {
  final Type type;
  final Status status;
  const AbsenceTypeWidget(
      {super.key, required this.type, required this.status});

  @override
  Widget build(BuildContext context) {
    return Text(
      type == Type.VACATION ? "VACATION" : "SICKNESS",
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: status == Status.REJECTED
            ? Colors.redAccent
            : status == Status.REQUESTED
                ? Colors.blueAccent
                : Colors.teal,
      ),
    );
  }
}
