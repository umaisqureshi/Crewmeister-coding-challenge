import 'dart:developer';

import 'package:crewmeister_coding_challenge/presentation/presentation.dart';

part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends BaseBloc<HomeEvent, HomeState> {
  final GetAllAbsencesUseCase _absencesUseCase;
  final GetAllMembersUseCase _membersUseCase;
  HomeBloc(
      {required GetAllAbsencesUseCase absencesUseCase,
      required GetAllMembersUseCase membersUseCase})
      : _absencesUseCase = absencesUseCase,
        _membersUseCase = membersUseCase,
        super(HomeInitial()) {
    on<GetAllAbsencesEvent>((event, emit) async {
      await _getAllAbsence();
    });
    on<GetAllMembersEvent>((event, emit) async {
      await _getAllMembers();
    });
  }

  _getAllAbsence() async {
    return _absencesUseCase.perform(UseCaseResult(
        onError: (error) {
          log(error.toString());
        },
        onSuccess: (data) {}));
  }

  _getAllMembers() async {
    return _membersUseCase.perform(UseCaseResult(
        onError: (error) {
          log(error.toString());
        },
        onSuccess: (data) {}));
  }
}
