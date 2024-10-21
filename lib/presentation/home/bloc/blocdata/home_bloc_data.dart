import 'package:crewmeister_coding_challenge/presentation/presentation.dart';
part 'home_bloc_data.freezed.dart';

@freezed
sealed class HomeBlocData with _$HomeBlocData {
  const factory HomeBlocData({
    @Default([]) List<AbsencePayload> absences,
    @Default([]) List<AbsencePayload> visibleList,
    @Default([]) List<AbsencePayload> filterByDateList,
    @Default([]) List<AbsencePayload> filterByTyeSickness,
    @Default([]) List<AbsencePayload> filterByTypeVacation,
    @Default([]) List<MembersPayload> members,
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
