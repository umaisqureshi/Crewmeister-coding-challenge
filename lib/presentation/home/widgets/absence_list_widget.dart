import 'package:crewmeister_coding_challenge/presentation/presentation.dart';

class AbsenceListWidget extends StatefulWidget {
  final List<AbsencePayload> absencesList;
  const AbsenceListWidget({super.key, required this.absencesList});

  @override
  State<AbsenceListWidget> createState() => _AbsenceListWidgetState();
}

class _AbsenceListWidgetState extends State<AbsenceListWidget> {
  bool _isLoadingMore = false;
  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (ScrollNotification scrollInfo) {
        if (scrollInfo.metrics.pixels >= scrollInfo.metrics.maxScrollExtent) {
          if (!_isLoadingMore) {
            setState(() {
              _isLoadingMore = true;
            });
            context.read<HomeBloc>().add(GetAbsenceEvent());

            Future.delayed(const Duration(seconds: 2), () {
              setState(() {
                _isLoadingMore = false;
              });
            });
          }
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
