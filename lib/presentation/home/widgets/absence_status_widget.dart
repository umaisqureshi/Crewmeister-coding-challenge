import 'package:crewmeister_coding_challenge/presentation/presentation.dart';

class AbsenceStatusWidget extends StatelessWidget {
  final AbsenceType type;
  final Status status;
  const AbsenceStatusWidget(
      {super.key, required this.type, required this.status});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          type == AbsenceType.VACATION ? "VACATION" : "SICKNESS",
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: status == Status.REJECTED
                ? Colors.redAccent
                : status == Status.REQUESTED
                    ? Colors.blueAccent
                    : Colors.teal,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Container(
            height: 25,
            width: context.screenSize.width * 0.17,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: status == Status.REJECTED
                  ? Colors.redAccent
                  : status == Status.REQUESTED
                      ? Colors.blueAccent
                      : Colors.teal,
            ),
            child: Center(
              child: Text(
                status == Status.REJECTED
                    ? "Rejected"
                    : status == Status.REQUESTED
                        ? "Requested"
                        : "Confirmed",
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w900),
              ),
            ),
          ),
        )
      ],
    );
  }
}
