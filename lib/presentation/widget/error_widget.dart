import 'package:crewmeister_coding_challenge/presentation/presentation.dart';

class ErrorScreenWidget extends StatefulWidget {
  final void Function()? onPressed;
  const ErrorScreenWidget({super.key, required this.onPressed});

  @override
  State<ErrorScreenWidget> createState() => _ErrorScreenWidgetState();
}

class _ErrorScreenWidgetState extends State<ErrorScreenWidget>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late bool isLoading;
  @override
  void initState() {
    super.initState();
    isLoading = false;
    _controller = AnimationController(vsync: this);
  }

  @override
  void didUpdateWidget(covariant ErrorScreenWidget oldWidget) {
    isLoading = false;
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
            child: Lottie.asset("assets/json/error.json", onLoaded: (c) {
          _controller
            ..duration = c.duration
            ..forward()
            ..repeat();
        }, controller: _controller, height: 250, width: 250)),
        Text(
          "Something went wrong. Please Try again",
          style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: context.appColorScheme.primary),
        ),
        const SizedBox(
          height: 20,
        ),
        isLoading
            ? CircularProgressIndicator(
                color: context.appColorScheme.primary,
              )
            : ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        WidgetStatePropertyAll(context.appColorScheme.primary)),
                onPressed: () {
                  widget.onPressed?.call();
                  setState(() {
                    isLoading = true;
                  });
                },
                child: const Text(
                  "Retry",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
      ],
    );
  }
}