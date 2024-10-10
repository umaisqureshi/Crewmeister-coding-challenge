import 'package:crewmeister_coding_challenge/presentation/presentation.dart';

class MemberNameWidget extends StatefulWidget {
  final int userId;
  const MemberNameWidget({super.key, required this.userId});

  @override
  State<MemberNameWidget> createState() => _MemberNameWidgetState();
}

class _MemberNameWidgetState extends State<MemberNameWidget> {
  String name = "Unknown";

  @override
  void initState() {
    super.initState();
    name = context.read<HomeBloc>().getMemberName(widget.userId);
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
    );
  }
}
