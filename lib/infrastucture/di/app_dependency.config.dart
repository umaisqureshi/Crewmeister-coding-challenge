// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:crewmeister_coding_challenge/data/data.dart' as _i3;
import 'package:crewmeister_coding_challenge/data/repository/home_repository_impl.dart'
    as _i4;
import 'package:crewmeister_coding_challenge/domain/absences/get_all_absences_use_case.dart'
    as _i5;
import 'package:crewmeister_coding_challenge/domain/domain.dart' as _i6;
import 'package:crewmeister_coding_challenge/domain/members/get_all_members_use_case.dart'
    as _i7;
import 'package:crewmeister_coding_challenge/presentation/module/home/bloc/home_bloc.dart'
    as _i8;
import 'package:crewmeister_coding_challenge/presentation/presentation.dart'
    as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart'
    as _i2; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt initGetIt({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.HomeRepository>(() => _i4.HomeRepositoryImp());
    gh.factory<_i5.GetAllAbsencesUseCase>(
        () => _i5.GetAllAbsencesUseCase(repository: gh<_i6.HomeRepository>()));
    gh.factory<_i7.GetAllMembersUseCase>(
        () => _i7.GetAllMembersUseCase(repository: gh<_i6.HomeRepository>()));
    gh.factory<_i8.HomeBloc>(() => _i8.HomeBloc(
          absencesUseCase: gh<_i9.GetAllAbsencesUseCase>(),
          membersUseCase: gh<_i9.GetAllMembersUseCase>(),
        ));
    return this;
  }
}
