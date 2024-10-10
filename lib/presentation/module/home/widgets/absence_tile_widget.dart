import 'package:crewmeister_coding_challenge/presentation/presentation.dart';

class AbsenceTileWidget extends StatelessWidget {
  final AbsencePayload absence;
  const AbsenceTileWidget({super.key, required this.absence});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenSize.height * 0.12,
      width: context.screenSize.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          AbsenceStatusColorWidget(
            status: absence.status,
          ),
          const SizedBox(
            width: 5,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              MemberNameWidget(
                key: ValueKey(absence.userId),
                userId: absence.userId,
              ),
              const SizedBox(
                height: 5,
              ),
              AbsenceDurationWidget(
                start: absence.startDate,
                end: absence.endDate,
              ),
              const SizedBox(
                height: 5,
              ),
              AbsenceTypeWidget(
                type: absence.type,
                status: absence.status,
              ),
            ],
          )
        ],
      ),
    );
  }
}
