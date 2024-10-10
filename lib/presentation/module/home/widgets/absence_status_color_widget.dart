import 'package:crewmeister_coding_challenge/presentation/presentation.dart';

class AbsenceStatusColorWidget extends StatelessWidget {
  final Status status;
  const AbsenceStatusColorWidget({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenSize.height * 0.12,
      width: context.screenSize.width * 0.05,
      decoration: BoxDecoration(
          color: status == Status.REJECTED
              ? Colors.redAccent
              : status == Status.REQUESTED
                  ? Colors.blueAccent
                  : Colors.teal,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          )),
    );
  }
}
