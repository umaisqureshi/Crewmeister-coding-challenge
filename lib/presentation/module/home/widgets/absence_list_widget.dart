import 'package:crewmeister_coding_challenge/presentation/presentation.dart';

class AbsenceListWidget extends StatefulWidget {
  final List<AbsencePayload> absencesList;
  const AbsenceListWidget({super.key, required this.absencesList});

  @override
  State<AbsenceListWidget> createState() => _AbsenceListWidgetState();
}

class _AbsenceListWidgetState extends State<AbsenceListWidget> {
  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (ScrollNotification scrollInfo) {
        if (scrollInfo.metrics.pixels >=
            scrollInfo.metrics.maxScrollExtent - 100) {
          context.read<HomeBloc>().add(GetAbsenceEvent());
        }
        return true;
      },
      child: ListView.builder(
          itemCount: widget.absencesList.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: AbsenceTileWidget(absence: widget.absencesList[index]),
            );
          }),
    );
  }
}
