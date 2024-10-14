import 'package:crewmeister_coding_challenge/presentation/presentation.dart';

class FilterBlocService {
  final HomeBloc _bloc;
  const FilterBlocService({required HomeBloc bloc}) : _bloc = bloc;

  List<AbsencePayload> filterByCreatedAt() {
    List<AbsencePayload> filterByDate = _bloc.blocData.absences;
    DateTime startDate = _bloc.blocData.startDate ?? DateTime.now();
    DateTime endDate = _bloc.blocData.endDate ?? DateTime.now();

    List<AbsencePayload> tempList = filterByDate.where((absence) {
      return (absence.createdAt.isAtSameMomentAs(startDate) ||
              absence.createdAt.isAfter(startDate)) &&
          (absence.createdAt.isAtSameMomentAs(endDate) ||
              absence.createdAt.isBefore(endDate));
    }).toList();

    _bloc.blocData = _bloc.blocData.copyWith(filterByDateList: tempList);
    return _bloc.blocData.filterByDateList;
  }

  List<AbsencePayload> filterBySickness() {
    List<AbsencePayload> filterBySickness = _bloc.blocData.absences;
    Iterable<AbsencePayload> sickness =
        filterBySickness.where((e) => e.type == Type.SICKNESS);
    _bloc.blocData =
        _bloc.blocData.copyWith(filterByTyeSickness: sickness.toList());
    return _bloc.blocData.filterByTyeSickness;
  }

  List<AbsencePayload> filterByVacation() {
    List<AbsencePayload> filterBySickness = _bloc.blocData.absences;
    Iterable<AbsencePayload> vacation =
        filterBySickness.where((e) => e.type == Type.VACATION);
    _bloc.blocData =
        _bloc.blocData.copyWith(filterByTypeVacation: vacation.toList());
    return _bloc.blocData.filterByTypeVacation;
  }
}
