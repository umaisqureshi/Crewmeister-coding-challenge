part of 'home_bloc.dart';

@immutable
abstract class HomeState extends Equatable {}

class HomeInitial extends HomeState {
  @override
  List<Object?> get props => [];
}

class HomeErrorState extends HomeState {
  @override
  List<Object?> get props => [DateTime.now().microsecond];
}

class AbsenceLoadedState extends HomeState {
  final List<AbsencePayload> absencesList;
  final int length;
  AbsenceLoadedState({required this.absencesList, required this.length});
  @override
  List<Object?> get props => [absencesList.length];
}
