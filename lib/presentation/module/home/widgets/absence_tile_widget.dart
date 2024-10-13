import 'package:crewmeister_coding_challenge/presentation/presentation.dart';

class AbsenceTileWidget extends StatelessWidget {
  final AbsencePayload absence;
  const AbsenceTileWidget({super.key, required this.absence});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _tileSize(context),
      width: context.screenSize.width,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: context.appColorScheme.shadow,
            blurRadius: 10,
            offset: const Offset(0, 7),
          ),
        ],
        color: context.appColorScheme.backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          AbsenceTileColorWidget(
            status: absence.status,
            height: _tileSize(context),
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                MemberDetailWidget(
                  key: ValueKey(absence.userId),
                  userId: absence.userId,
                ),
                AbsenceDurationWidget(
                  start: absence.startDate,
                  end: absence.endDate,
                ),
                const SizedBox(
                  height: 5,
                ),
                AbsenceStatusWidget(
                  type: absence.type,
                  status: absence.status,
                ),
                const SizedBox(
                  height: 5,
                ),
                if (absence.admitterNote != "")
                  NoteWidget(
                    note: absence.admitterNote,
                    byAdmin: true,
                  ),
                if (absence.memberNote != "")
                  NoteWidget(
                    note: absence.memberNote,
                    byAdmin: false,
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }

  double _tileSize(BuildContext context) {
    if (absence.admitterNote != "" && absence.memberNote != "") {
      return context.screenSize.height * 0.28;
    }
    if (absence.admitterNote != "") {
      return context.screenSize.height * 0.21;
    }
    if (absence.memberNote != "") {
      return context.screenSize.height * 0.21;
    }
    return context.screenSize.height * 0.12;
  }
}
