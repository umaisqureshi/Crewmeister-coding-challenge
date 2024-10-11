import 'package:crewmeister_coding_challenge/presentation/presentation.dart';
import 'dart:developer';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends BaseBloc<HomeEvent, HomeState> {
  final GetAllAbsencesUseCase _absencesUseCase;
  final GetAllMembersUseCase _membersUseCase;
  HomeBlocData blocData = const HomeBlocData();
  HomeBloc(
      {required GetAllAbsencesUseCase absencesUseCase,
      required GetAllMembersUseCase membersUseCase})
      : _absencesUseCase = absencesUseCase,
        _membersUseCase = membersUseCase,
        super(HomeInitial()) {
    on<GetAbsenceEvent>((event, emit) async {
      if (blocData.startIndex >= blocData.totalLength) {
        emit(AbsenceLoadedState(
            absencesList: blocData.visibleList, length: blocData.totalLength));
      } else {
        await _getAbsenceData(emit);
      }
    });

    on<GetAllAbsencesEvent>((event, emit) async {
      await _getAllAbsence(emit);
    });
    on<GetAllMembersEvent>((event, emit) async {
      await _getAllMembers(emit);
    });
  }

  _getAllAbsence(Emitter<HomeState> emit) async {
    return _absencesUseCase.perform(UseCaseResult(onError: (error) {
      emit(HomeErrorState());
      log(error.toString());
    }, onSuccess: (data) {
      blocData =
          blocData.copyWith(absences: data, totalLength: data.payload.length);
      add(GetAbsenceEvent());
    }));
  }

  _getAllMembers(Emitter<HomeState> emit) async {
    return _membersUseCase.perform(UseCaseResult(onError: (error) {
      log(error.toString());
      emit(HomeErrorState());
    }, onSuccess: (data) {
      blocData = blocData.copyWith(members: data);
      add(GetAllAbsencesEvent());
    }));
  }

  _getAbsenceData(Emitter<HomeState> emit) {
    if (blocData.endIndex > blocData.totalLength) {
      blocData = blocData.copyWith(endIndex: blocData.totalLength);
    }
    Iterable<AbsencePayload> newAbsences = blocData.absences!.payload
        .getRange(blocData.startIndex, blocData.endIndex);
    List<AbsencePayload> updatedVisibleList = [
      ...blocData.visibleList,
      ...newAbsences
    ];
    blocData = blocData.copyWith(
        visibleList: updatedVisibleList,
        startIndex: blocData.endIndex,
        endIndex: blocData.endIndex + blocData.limit);
    emit(AbsenceLoadedState(
        absencesList: blocData.visibleList, length: blocData.totalLength));
  }

  MembersPayload? getMemberData(int id) {
    Iterable<MembersPayload> tempMembers = blocData.members!.payload;
    MembersPayload? member =
        tempMembers.firstWhereOrNull((e) => e.userId == id);
    if (member != null) {
      return member;
    }
    return null;
  }
}
