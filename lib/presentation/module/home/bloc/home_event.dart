part of 'home_bloc.dart';

@immutable
abstract class HomeEvent extends Equatable {
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
  List<Object?> get props => [DateTime.now().microsecond];
}
