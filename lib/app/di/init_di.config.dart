// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/auth/domain/auth_state/auth_cubit.dart' as _i5;
import '../../features/filter_lessons/domain/cubit/filter_cubit.dart' as _i6;
import '../../features/setting/domain/cubit/setting_cubit.dart' as _i7;
import '../../features/timetable/data/net_timetable_repo.dart' as _i9;
import '../../features/timetable/domain/bloc/timetable_cubit.dart' as _i10;
import '../../features/timetable/domain/timetable_repo.dart' as _i8;
import '../data/main_app_config.dart' as _i4;
import '../domain/app_config.dart' as _i3;

const String _prod = 'prod';
const String _dev = 'dev';
const String _test = 'test';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.singleton<_i3.AppConfig>(
    _i4.ProdAppConfig(),
    registerFor: {_prod},
  );
  gh.singleton<_i3.AppConfig>(
    _i4.DevAppConfig(),
    registerFor: {_dev},
  );
  gh.singleton<_i3.AppConfig>(
    _i4.TestAppConfig(),
    registerFor: {_test},
  );
  gh.singleton<_i5.AuthCubit>(_i5.AuthCubit());
  gh.singleton<_i6.FilterCubit>(_i6.FilterCubit());
  gh.singleton<_i7.SettingCubit>(_i7.SettingCubit());
  gh.factory<_i8.TimetableRepo>(() => _i9.NetTimetableRepo());
  gh.singleton<_i10.TimetableCubit>(
      _i10.TimetableCubit(get<_i8.TimetableRepo>()));
  return get;
}
