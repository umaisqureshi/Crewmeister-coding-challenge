import 'package:crewmeister_coding_challenge/presentation/presentation.dart';

class FilterComponent
    extends WidgetComponent<HomeBloc, HomeState, FilterState> {
  const FilterComponent({super.key});

  @override
  Widget buildComponent(BuildContext context, FilterState state) {
    return FilterButtonWidget(
      type: state.type,
      start: state.start,
      end: state.end,
    );
  }

  @override
  Widget buildEmpty(BuildContext context) {
    return const FilterButtonWidget(
      type: FilterType.CLEAR,
    );
  }
}
