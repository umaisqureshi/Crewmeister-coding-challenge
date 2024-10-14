import 'package:crewmeister_coding_challenge/presentation/presentation.dart';

class FilterBlocService {
  final HomeBloc _bloc;
  const FilterBlocService({required HomeBloc bloc}) : _bloc = bloc;

  List<AbsencePayload> filterByCreatedAt() {
    final List<AbsencePayload> absences = _bloc.blocData.absences;
    final DateTime startDate = _bloc.blocData.startDate ?? DateTime.now();
    final DateTime endDate = _bloc.blocData.endDate ?? DateTime.now();

    final List<AbsencePayload> filteredList = absences.where((absence) {
      final createdAt = absence.createdAt;
      return (createdAt.isAtSameMomentAs(startDate) ||
              createdAt.isAfter(startDate)) &&
          (createdAt.isAtSameMomentAs(endDate) || createdAt.isBefore(endDate));
    }).toList();

    _bloc.blocData = _bloc.blocData.copyWith(filterByDateList: filteredList);
    return _bloc.blocData.filterByDateList;
  }

  List<AbsencePayload> filterByType(AbsenceType absenceType) {
    final List<AbsencePayload> absences = _bloc.blocData.absences;
    final List<AbsencePayload> filteredList =
        absences.where((absence) => absence.type == absenceType).toList();

    switch (absenceType) {
      case AbsenceType.SICKNESS:
        _bloc.blocData =
            _bloc.blocData.copyWith(filterByTyeSickness: filteredList);
        return _bloc.blocData.filterByTyeSickness;
      case AbsenceType.VACATION:
        _bloc.blocData =
            _bloc.blocData.copyWith(filterByTypeVacation: filteredList);
        return _bloc.blocData.filterByTypeVacation;
      default:
        return [];
    }
  }

  List<AbsencePayload> filterBySickness() => filterByType(AbsenceType.SICKNESS);

  List<AbsencePayload> filterByVacation() => filterByType(AbsenceType.VACATION);
}
