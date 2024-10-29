import 'package:crewmeister_coding_challenge/application/bloc/global_cubit.dart';
import 'package:crewmeister_coding_challenge/presentation/presentation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<HomeBloc>().add(GetAllMembersEvent());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: context.appColorScheme.backgroundColor,
          appBar: _appBarWidget(context),
          body: const AbsenceListComponent()),
    );
  }

  PreferredSizeWidget _appBarWidget(BuildContext context) {
    return PreferredSize(
        preferredSize: Size(context.screenSize.width, 100),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Home",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: context.appColorScheme.onSecondary),
                ),
                BlocBuilder<GlobalCubit, AppColorScheme>(
                  buildWhen: (previous, current) => previous != current,
                  builder: (context1, state) {
                    bool isLightTheme =
                        state == AppColorScheme.light() ? true : false;
                    return Row(
                      children: [
                        InkWell(
                          onTap: () {
                            if (isLightTheme) {
                              context1
                                  .read<GlobalCubit>()
                                  .updateColorScheme(AppColorScheme.dark());
                            } else {
                              context1
                                  .read<GlobalCubit>()
                                  .updateColorScheme(AppColorScheme.light());
                            }
                            setState(() {
                              isLightTheme = !isLightTheme;
                            });
                          },
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: context.appColorScheme.shadow,
                                  blurRadius: 10,
                                  offset: const Offset(-2, 9),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(40),
                              color: context.appColorScheme.backgroundColor,
                            ),
                            child: Icon(
                              isLightTheme ? Icons.light_mode : Icons.dark_mode,
                              color: context.appColorScheme.onSecondary,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const FilterComponent(),
                      ],
                    );
                  },
                )
              ],
            ),
          ),
        ));
  }
}
