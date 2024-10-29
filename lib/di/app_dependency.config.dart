// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../data/data.dart' as _i433;
import '../data/repository/home_repository_impl.dart' as _i723;
import '../domain/domain.dart' as _i515;
import '../domain/usecase/get_all_absences_use_case.dart' as _i276;
import '../domain/usecase/get_all_members_use_case.dart' as _i610;
import '../presentation/home/bloc/home_bloc.dart' as _i355;
import '../presentation/presentation.dart' as _i159;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initGetIt({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i433.HomeRepository>(() => _i723.HomeRepositoryImp());
    gh.factory<_i610.GetAllMembersUseCase>(() =>
        _i610.GetAllMembersUseCase(repository: gh<_i515.HomeRepository>()));
    gh.factory<_i276.GetAllAbsencesUseCase>(() =>
        _i276.GetAllAbsencesUseCase(repository: gh<_i515.HomeRepository>()));
    gh.factory<_i355.HomeBloc>(() => _i355.HomeBloc(
          absencesUseCase: gh<_i159.GetAllAbsencesUseCase>(),
          membersUseCase: gh<_i159.GetAllMembersUseCase>(),
        ));
    return this;
  }
}
