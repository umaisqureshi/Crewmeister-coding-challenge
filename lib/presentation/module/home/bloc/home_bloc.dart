import 'package:crewmeister_coding_challenge/presentation/presentation.dart';
import 'dart:developer';

part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends BaseBloc<HomeEvent, HomeState> {
  final GetAllAbsencesUseCase _absencesUseCase;
  final GetAllMembersUseCase _membersUseCase;
  late final FilterBlocService filterBlocService;
  HomeBlocData blocData = const HomeBlocData();

  HomeBloc({
    required GetAllAbsencesUseCase absencesUseCase,
    required GetAllMembersUseCase membersUseCase,
  })  : _absencesUseCase = absencesUseCase,
        _membersUseCase = membersUseCase,
        super(HomeInitial()) {
    _initializeFilterService();
    _registerEvents();
  }

  void _initializeFilterService() {
    filterBlocService = FilterBlocService(bloc: this);
  }

  void _registerEvents() {
    on<GetAbsenceEvent>(_handleGetAbsenceEvent);
    on<GetAllAbsencesEvent>(_handleGetAllAbsencesEvent);
    on<GetFilterAbsenceEvent>(_handleGetFilteredAbsenceEvent);
    on<GetAllMembersEvent>(_handleGetAllMembersEvent);
    on<ClearFilterEvent>(_handleClearFilterEvent);
    on<UpdateStartDateEvent>(_updateStartDate);
    on<UpdateEndDateEvent>(_updateEndDate);
  }

  Future<void> _handleGetAbsenceEvent(
      GetAbsenceEvent event, Emitter<HomeState> emit) async {
    if (blocData.startIndex >= blocData.totalLength) {
      emit(AbsenceLoadedState(
        absencesList: blocData.visibleList,
        length: blocData.totalLength,
      ));
    } else {
      await _loadAbsenceData(emit);
    }
  }

  Future<void> _handleGetAllAbsencesEvent(
      GetAllAbsencesEvent event, Emitter<HomeState> emit) async {
    await _performAbsencesLoad(emit);
  }

  Future<void> _handleGetFilteredAbsenceEvent(
      GetFilterAbsenceEvent event, Emitter<HomeState> emit) async {
    if (event.type != FilterType.DATE) {
      blocData = blocData.copyWith(startDate: null, endDate: null);
    }
    emit(FilterState(
      type: event.type,
      start: blocData.startDate,
      end: blocData.endDate,
    ));
    await _applyFilters(event, emit);
  }

  Future<void> _handleGetAllMembersEvent(
      GetAllMembersEvent event, Emitter<HomeState> emit) async {
    await _performMembersLoad(emit);
  }

  Future<void> _handleClearFilterEvent(
      ClearFilterEvent event, Emitter<HomeState> emit) async {
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
      end: blocData.endDate,
    ));
    await _loadAbsenceData(emit);
  }

  void _updateStartDate(UpdateStartDateEvent event, Emitter<HomeState> emit) {
    blocData = blocData.copyWith(startDate: event.start);
  }

  void _updateEndDate(UpdateEndDateEvent event, Emitter<HomeState> emit) {
    blocData = blocData.copyWith(endDate: event.end);
  }

  Future<void> _performAbsencesLoad(Emitter<HomeState> emit) async {
    await _absencesUseCase.perform(UseCaseResult(
      onError: (error) {
        emit(HomeErrorState());
        log(error.toString());
      },
      onSuccess: (data) {
        blocData = blocData.copyWith(absences: data, totalLength: data.length);
        add(GetAbsenceEvent());
      },
    ));
  }

  Future<void> _performMembersLoad(Emitter<HomeState> emit) async {
    await _membersUseCase.perform(UseCaseResult(
      onError: (error) {
        log(error.toString());
        emit(HomeErrorState());
      },
      onSuccess: (data) {
        blocData = blocData.copyWith(members: data);
        add(GetAllAbsencesEvent());
      },
    ));
  }

  Future<void> _applyFilters(
      GetFilterAbsenceEvent event, Emitter<HomeState> emit) async {
    blocData = blocData.copyWith(
      filterType: event.type,
      isFilterActive: true,
      startIndex: 0,
      endIndex: 10,
      visibleList: [],
    );
    await _loadAbsenceData(emit);
  }

  Future<void> _loadAbsenceData(Emitter<HomeState> emit) async {
    final dataList = await _fetchAbsenceList();
    final endIndex = blocData.endIndex > blocData.totalLength
        ? blocData.totalLength
        : blocData.endIndex;

    final newAbsences = dataList.getRange(blocData.startIndex, endIndex);
    final updatedVisibleList = [...blocData.visibleList, ...newAbsences];

    blocData = blocData.copyWith(
      visibleList: updatedVisibleList,
      startIndex: endIndex,
      endIndex: endIndex + blocData.limit,
    );

    emit(AbsenceLoadedState(
      absencesList: blocData.visibleList,
      length: blocData.totalLength,
    ));
  }

  Future<List<AbsencePayload>> _fetchAbsenceList() async {
    if (!blocData.isFilterActive) {
      await _updateTotalLength(blocData.absences.length);
      return blocData.absences;
    }

    switch (blocData.filterType) {
      case FilterType.SICKNESS:
        return await _filterSickness();
      case FilterType.VACATION:
        return await _filterVacation();
      case FilterType.DATE:
        return await _filterByDate();
      default:
        return [];
    }
  }

  Future<List<AbsencePayload>> _filterSickness() async {
    if (blocData.filterByTyeSickness.isEmpty) {
      final sicknessList = filterBlocService.filterBySickness();
      await _updateTotalLength(sicknessList.length);
      return sicknessList;
    }
    return blocData.filterByTyeSickness;
  }

  Future<List<AbsencePayload>> _filterVacation() async {
    if (blocData.filterByTypeVacation.isEmpty) {
      final vacationList = filterBlocService.filterByVacation();
      await _updateTotalLength(vacationList.length);
      return vacationList;
    }
    return blocData.filterByTypeVacation;
  }

  Future<List<AbsencePayload>> _filterByDate() async {
    if (blocData.filterByDateList.isEmpty) {
      try {
        final dateList = filterBlocService.filterByCreatedAt();
        await _updateTotalLength(dateList.length);
        return dateList;
      } catch (e) {
        log(e.toString());
      }
    }
    return blocData.filterByDateList;
  }

  Future<void> _updateTotalLength(int length) async {
    blocData = blocData.copyWith(totalLength: length);
  }

  MembersPayload? getMemberData(int id) {
    return blocData.members.firstWhereOrNull((e) => e.userId == id);
  }
}
