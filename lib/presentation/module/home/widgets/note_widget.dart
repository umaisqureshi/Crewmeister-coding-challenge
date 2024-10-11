import 'package:crewmeister_coding_challenge/infrastucture/infrastucture.dart';
import 'package:crewmeister_coding_challenge/presentation/presentation.dart';

class NoteWidget extends StatefulWidget {
  final String note;
  final bool byAdmin;
  const NoteWidget({super.key, required this.note, required this.byAdmin});

  @override
  State<NoteWidget> createState() => _NoteWidgetState();
}

class _NoteWidgetState extends State<NoteWidget> {
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController(text: widget.note);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.byAdmin ? "Admin note :" : "Member note :",
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 12,
              color: context.appColorScheme.onSecondary),
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: TextField(
            controller: _controller,
            readOnly: true,
            maxLines: 2,
            minLines: 1,
            style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: context.appColorScheme.onSecondary),
            decoration: InputDecoration(
              fillColor: context.appColorScheme.shadow.withOpacity(0.1),
              filled: true,
              border: InputBorder.none,
              contentPadding: const EdgeInsets.all(8.0),
            ),
            scrollPhysics:
                const BouncingScrollPhysics(), // Adds scroll behavior
          ),
        ),
      ],
    );
  }
}
