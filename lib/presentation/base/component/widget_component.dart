import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class ErrorWidgetHandlerComponent<
    Bloc extends BlocBase<BlocState>,
    BlocState,
    CurrentState extends BlocState,
    ErrorState extends BlocState> extends StatelessWidget {
  const ErrorWidgetHandlerComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    onInit(context);
    return BlocBuilder<Bloc, BlocState>(
      builder: (_, state) {
        if (state is CurrentState) {
          return buildComponent(context, state);
        }
        if (state is ErrorState) {
          return buildError(context, state);
        }
        return buildEmpty(context);
      },
      buildWhen: (previous, current) => rebuildCondition(previous, current),
    );
  }

  void onInit(BuildContext context) {}

  Widget buildComponent(BuildContext context, CurrentState state);
  Widget buildEmpty(BuildContext context);
  Widget buildError(BuildContext context, ErrorState errorState);
  bool rebuildCondition(BlocState? previous, BlocState? current) {
    return current is CurrentState || current is ErrorState;
  }
}
