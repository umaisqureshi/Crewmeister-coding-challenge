part of 'home_bloc.dart';

@immutable
sealed class HomeState extends Equatable {}

class HomeInitial extends HomeState {
  @override
  List<Object?> get props => [];
}

class HomeErrorState extends HomeState {
  @override
  List<Object?> get props => [DateTime.now()];
}

class FilterState extends HomeState {
  final FilterType type;
  final DateTime? start;
  final DateTime? end;
  FilterState({required this.type, required this.start, required this.end});
  @override
  List<Object?> get props => [type];
}

class AbsenceLoadedState extends HomeState {
  final List<AbsencePayload> absencesList;
  final int length;
  AbsenceLoadedState({required this.absencesList, required this.length});
  @override
  List<Object?> get props => [absencesList.length];
}
