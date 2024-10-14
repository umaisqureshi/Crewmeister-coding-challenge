import 'package:crewmeister_coding_challenge/presentation/module/home/bloc/service/filter_bloc_service.dart';
import 'package:crewmeister_coding_challenge/presentation/presentation.dart';
import 'dart:developer';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends BaseBloc<HomeEvent, HomeState> {
  final GetAllAbsencesUseCase _absencesUseCase;
  final GetAllMembersUseCase _membersUseCase;
  late FilterBlocService filterBlocService;
  HomeBlocData blocData = const HomeBlocData();
  HomeBloc(
      {required GetAllAbsencesUseCase absencesUseCase,
      required GetAllMembersUseCase membersUseCase})
      : _absencesUseCase = absencesUseCase,
        _membersUseCase = membersUseCase,
        super(HomeInitial()) {
    _initFilterService();
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
    on<GetFilterAbsenceEvent>((event, emit) async {
      if (event.type != FilterType.DATE) {
        blocData = blocData.copyWith(startDate: null, endDate: null);
      }
      emit(FilterState(
          type: event.type, start: blocData.startDate, end: blocData.endDate));
      await _getFilteredAbsence(event, emit);
    });
    on<GetAllMembersEvent>((event, emit) async {
      await _getAllMembers(emit);
    });

    on<ClearFilterEvent>((event, emit) async {
      blocData = blocData.copyWith(
        filterType: FilterType.CLEAR,
        isFilterActive: false,
        startIndex: 0,
        endIndex: 10,
        startDate: null,
        endDate: null,
        visibleList: [],
      );
      emit(FilterState(
          type: blocData.filterType,
          start: blocData.startDate,
          end: blocData.endDate));
      await _getAbsenceData(emit);
    });

    on<UpdateStartDateEvent>((event, emit) async {
      blocData = blocData.copyWith(startDate: event.start);
    });
    on<UpdateEndDateEvent>((event, emit) async {
      blocData = blocData.copyWith(endDate: event.end);
    });
  }

  _getAllAbsence(Emitter<HomeState> emit) async {
    return _absencesUseCase.perform(UseCaseResult(onError: (error) {
      emit(HomeErrorState());
      log(error.toString());
    }, onSuccess: (data) {
      blocData = blocData.copyWith(absences: data, totalLength: data.length);
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

  _getFilteredAbsence(event, emit) async {
    blocData = blocData.copyWith(
      filterType: event.type,
      isFilterActive: true,
      startIndex: 0,
      endIndex: 10,
      visibleList: [],
    );

    await _getAbsenceData(emit);
  }

  _getAbsenceData(Emitter<HomeState> emit) async {
    List<AbsencePayload> dataList = await getAbsenceList();

    if (blocData.endIndex > blocData.totalLength) {
      blocData = blocData.copyWith(endIndex: blocData.totalLength);
    }
    Iterable<AbsencePayload> newAbsences =
        dataList.getRange(blocData.startIndex, blocData.endIndex);

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
    Iterable<MembersPayload> tempMembers = blocData.members;
    MembersPayload? member =
        tempMembers.firstWhereOrNull((e) => e.userId == id);
    if (member != null) {
      return member;
    }
    return null;
  }

  Future<List<AbsencePayload>> getAbsenceList() async {
    if (!blocData.isFilterActive) {
      await setTotalLength(blocData.absences.length);
      return blocData.absences;
    }
    switch (blocData.filterType) {
      case FilterType.SICKNESS:
        if (blocData.filterByTyeSickness.isEmpty) {
          List<AbsencePayload> sicknessList =
              filterBlocService.filterBySickness();
          await setTotalLength(blocData.filterByTyeSickness.length);
          return sicknessList;
        }
        return blocData.filterByTyeSickness;

      case FilterType.VACATION:
        if (blocData.filterByTypeVacation.isEmpty) {
          List<AbsencePayload> vacationList =
              filterBlocService.filterByVacation();
          await setTotalLength(blocData.filterByTypeVacation.length);

          return vacationList;
        }
        return blocData.filterByTypeVacation;

      case FilterType.DATE:
        if (blocData.filterByDateList.isEmpty) {
          List<AbsencePayload> dateList = filterBlocService.filterByCreatedAt();
          await setTotalLength(blocData.filterByDateList.length);
          return dateList;
        }
        return blocData.filterByDateList;

      default:
        return [];
    }
  }

  Future<void> setTotalLength(int length) async {
    blocData = blocData.copyWith(totalLength: length);
  }

  _initFilterService() {
    filterBlocService = FilterBlocService(bloc: this);
  }
}
