import 'package:bloc_test/bloc_test.dart';
import 'package:crewmeister_coding_challenge/data/data.dart';
import 'package:crewmeister_coding_challenge/domain/absences/get_all_absences_use_case.dart';
import 'package:crewmeister_coding_challenge/domain/base/use_case_result.dart';
import 'package:crewmeister_coding_challenge/domain/members/get_all_members_use_case.dart';
import 'package:crewmeister_coding_challenge/presentation/module/home/bloc/service/filter_bloc_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:crewmeister_coding_challenge/presentation/module/home/bloc/home_bloc.dart';
import 'package:mocktail/mocktail.dart';

class MockGetAllAbsencesUseCase extends Mock implements GetAllAbsencesUseCase {}

class MockGetAllMembersUseCase extends Mock implements GetAllMembersUseCase {}

class MockFilterBlocService extends Mock implements FilterBlocService {}

class MockAbsencePayload extends Mock implements AbsencePayload {}

class FakeAbsenceUseCaseResult extends Fake
    implements UseCaseResult<List<AbsencePayload>> {}

void main() {
  late HomeBloc homeBloc;
  late MockGetAllAbsencesUseCase mockAbsencesUseCase;
  late MockGetAllMembersUseCase mockMembersUseCase;
  late MockFilterBlocService mockFilterBlocService;

  setUp(() {
    registerFallbackValue(FakeAbsenceUseCaseResult());
    mockAbsencesUseCase = MockGetAllAbsencesUseCase();
    mockMembersUseCase = MockGetAllMembersUseCase();
    homeBloc = HomeBloc(
        absencesUseCase: mockAbsencesUseCase,
        membersUseCase: mockMembersUseCase);

    mockFilterBlocService = MockFilterBlocService();
  });

  tearDown(() {
    homeBloc.close();
  });

  group('HomeBloc Tests', () {
    blocTest<HomeBloc, HomeState>(
      'emits [AbsenceLoadedState] when GetAbsenceEvent is added and all absences are loaded',
      build: () {
        when(() => mockAbsencesUseCase.perform(any())).thenAnswer(
          (invocation) async => UseCaseResult(onSuccess: (data) => data),
        );
        return homeBloc;
      },
      act: (bloc) => bloc.add(GetAbsenceEvent()),
      expect: () => [
        isA<AbsenceLoadedState>(),
      ],
    );

    blocTest<HomeBloc, HomeState>(
      'emits [FilterState, AbsenceLoadedState] when GetFilterAbsenceEvent is added',
      build: () {
        when(() => mockFilterBlocService.filterBySickness()).thenReturn([]);

        return homeBloc;
      },
      act: (bloc) =>
          bloc.add(const GetFilterAbsenceEvent(type: FilterType.SICKNESS)),
      expect: () => [
        isA<FilterState>(),
        isA<AbsenceLoadedState>(),
      ],
    );

    blocTest<HomeBloc, HomeState>(
      'emits [HomeErrorState] when GetAllAbsencesUseCase fails',
      build: () {
        when(() => mockAbsencesUseCase.perform(any())).thenAnswer((_) async {
          final result = _.positionalArguments[0];
          result.onError?.call(Exception(
              "Error occurred")); // Trigger the onError callback with an error
          return result;
        });
        return homeBloc;
      },
      act: (bloc) => bloc.add(GetAllAbsencesEvent()),
      expect: () => [
        isA<HomeErrorState>(),
      ],
    );
  });
}
