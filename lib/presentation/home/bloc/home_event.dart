part of 'home_bloc.dart';

@immutable
sealed class HomeEvent extends Equatable {
  const HomeEvent();
}

class GetAllAbsencesEvent extends HomeEvent {
  @override
  List<Object?> get props => [DateTime.now().microsecond];
}

class GetAllMembersEvent extends HomeEvent {
  @override
  List<Object?> get props => [DateTime.now().microsecond];
}

class GetAbsenceEvent extends HomeEvent {
  @override
  List<Object?> get props => [DateTime.now()];
}

class UpdateStartDateEvent extends HomeEvent {
  final DateTime start;
  const UpdateStartDateEvent({required this.start});
  @override
  List<Object?> get props => [DateTime.now()];
}

class UpdateEndDateEvent extends HomeEvent {
  final DateTime end;
  const UpdateEndDateEvent({required this.end});
  @override
  List<Object?> get props => [DateTime.now()];
}

class GetFilterAbsenceEvent extends HomeEvent {
  final FilterType type;
  const GetFilterAbsenceEvent({required this.type});
  @override
  List<Object?> get props => [DateTime.now().microsecond];
}

class ClearFilterEvent extends HomeEvent {
  @override
  List<Object?> get props => [DateTime.now().microsecond];
}
