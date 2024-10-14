import 'package:crewmeister_coding_challenge/presentation/presentation.dart';

class MemberDetailWidget extends StatefulWidget {
  final int userId;
  const MemberDetailWidget({super.key, required this.userId});

  @override
  State<MemberDetailWidget> createState() => _MemberDetailWidgetState();
}

class _MemberDetailWidgetState extends State<MemberDetailWidget> {
  late MembersPayload? member;

  @override
  void initState() {
    super.initState();
    member = context.read<HomeBloc>().getMemberData(widget.userId);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          constraints: const BoxConstraints(maxWidth: 300),
          child: Text(
            member?.name ?? "Unknown",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: context.appColorScheme.onSecondary),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: SizedBox(
            height: 35,
            width: 35,
            child: CachedNetworkImage(
              imageUrl: member?.image ?? "",
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  Center(
                      child: CircularProgressIndicator(
                value: downloadProgress.progress,
                color: Colors.white,
              )),
              errorWidget: (context, url, error) => Icon(
                Icons.person,
                color: context.appColorScheme.onSecondary,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
