import 'package:crewmeister_coding_challenge/presentation/presentation.dart';
part 'home_bloc_data.freezed.dart';

@freezed
class HomeBlocData with _$HomeBlocData {
  const factory HomeBlocData({
    AbsenceEntity? absences,
    @Default([]) List<AbsencePayload> visibleList,
    MembersEntity? members,
    @Default(10) int limit,
    @Default(0) int totalLength,
    @Default(0) int startIndex,
    @Default(10) int endIndex,
  }) = _HomeBlocData;
}
