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
                      color: context.appColorScheme.primary),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                  ),
                  child: Icon(
                    Icons.filter_list,
                    color: context.appColorScheme.primary,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
