import 'package:crewmeister_coding_challenge/presentation/presentation.dart';
part 'home_bloc_data.freezed.dart';

@freezed
class HomeBlocData with _$HomeBlocData {
  const factory HomeBlocData({
    AbsenceEntity? absences,
    @Default([]) List<AbsencePayload> visibleList,
    @Default([]) List<AbsencePayload> filterByDateList,
    @Default([]) List<AbsencePayload> filterByTyeSickness,
    @Default([]) List<AbsencePayload> filterByTypeVacation,
    MembersEntity? members,
    DateTime? startDate,
    DateTime? endDate,
    @Default(FilterType.CLEAR) FilterType filterType,
    @Default(10) int limit,
    @Default(false) bool isFilterActive,
    @Default(0) int totalLength,
    @Default(0) int startIndex,
    @Default(10) int endIndex,
  }) = _HomeBlocData;
}
