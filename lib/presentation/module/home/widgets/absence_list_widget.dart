import 'package:crewmeister_coding_challenge/presentation/presentation.dart';

class AbsenceListWidget extends StatelessWidget {
  final List<AbsencePayload> absencesList;
  const AbsenceListWidget({super.key, required this.absencesList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: absencesList.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: AbsenceTileWidget(absence: absencesList[index]),
          );
        });
  }
}
