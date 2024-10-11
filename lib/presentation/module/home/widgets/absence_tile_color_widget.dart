import 'package:crewmeister_coding_challenge/presentation/presentation.dart';

class AbsenceTileColorWidget extends StatelessWidget {
  final Status status;
  final double height;
  const AbsenceTileColorWidget(
      {super.key, required this.status, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
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
