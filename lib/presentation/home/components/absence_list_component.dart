import 'package:crewmeister_coding_challenge/presentation/presentation.dart';

class AbsenceListComponent extends ErrorWidgetComponent<HomeBloc, HomeState,
    AbsenceLoadedState, HomeErrorState> {
  const AbsenceListComponent({super.key});

  @override
  Widget buildComponent(BuildContext context, state) {
    if (state.absencesList.isEmpty) {
      return const EmptyListWidget();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AbsenceCountWidget(count: state.length),
        const SizedBox(
          height: 10,
        ),
        Expanded(child: AbsenceListWidget(absencesList: state.absencesList)),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }

  @override
  Widget buildLoading(BuildContext context) {
    return const LoadingIndicator();
  }

  @override
  Widget buildError(BuildContext context, errorState) {
    return ErrorScreenWidget(
      onPressed: () async {
        Future.delayed(const Duration(seconds: 1), () {
          context.read<HomeBloc>().add(GetAllMembersEvent());
        });
      },
    );
  }
}
