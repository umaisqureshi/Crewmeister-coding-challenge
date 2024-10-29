import 'package:crewmeister_coding_challenge/application/application.dart';
part 'global_state.dart';

class GlobalCubit extends HydratedCubit<AppColorScheme> {
  GlobalCubit() : super(AppColorScheme.light());

  @override
  AppColorScheme? fromJson(Map<String, dynamic> json) {
    final themeType = json['themeType'] as String?;
    if (themeType == 'dark') {
      return AppColorScheme.dark();
    } else if (themeType == 'light') {
      return AppColorScheme.light();
    }
    return null;
  }

  @override
  Map<String, dynamic>? toJson(AppColorScheme state) {
    return {
      "themeType": state.themeType,
    };
  }

  void updateColorScheme(AppColorScheme colorScheme) => emit(colorScheme);
}
