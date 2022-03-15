// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i17;
import 'application/auth/sign_in_bloc/signin_bloc.dart' as _i15;
import 'application/auth/sign_up_bloc/signup_bloc.dart' as _i16;
import 'application/connectivity/connectivity_block.dart' as _i12;
import 'application/theme/theme_bloc.dart' as _i9;
import 'domain/auth/repository/i_auth_facade.dart' as _i13;
import 'domain/local/i_connectivity_facade.dart' as _i6;
import 'infrastructure/core/connection_status.dart' as _i7;
import 'infrastructure/local/html_local_storage.dart' as _i10;
import 'infrastructure/local/secure_storage.dart' as _i8;
import 'infrastructure/remote/auth/auth_facade.dart' as _i14;
import 'infrastructure/remote/auth/auth_service.dart' as _i11;
import 'infrastructure/remote/core/injectable_module.dart' as _i18;
import 'presentation/controllers/cubit/check_box_cubit.dart' as _i3;
import 'presentation/controllers/cubit/gridview_cubit.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.CheckBoxCubit>(
      () => _i3.CheckBoxCubit(initialState: get<bool>()));
  gh.singleton<_i4.Dio>(registerModule.dio);
  gh.factory<_i5.GridviewCubit>(
      () => _i5.GridviewCubit(initialState: get<bool>()));
  gh.lazySingleton<_i6.IConnectivityFacade>(() => _i7.ConnectivityService());
  gh.factory<_i8.SecureStorage>(() => _i8.SecureStorage());
  gh.factory<_i9.ThemeBloc>(() => _i9.ThemeBloc());
  gh.factory<_i10.WebStorage>(() => _i10.WebStorage());
  gh.lazySingleton<_i11.AuthService>(() => _i11.AuthService(get<_i4.Dio>()));
  gh.factory<_i12.ConnectivityBloc>(
      () => _i12.ConnectivityBloc(get<_i6.IConnectivityFacade>()));
  gh.lazySingleton<_i13.IAuthFacade>(() => _i14.AuthFacade(
      get<_i11.AuthService>(),
      get<_i8.SecureStorage>(),
      get<_i10.WebStorage>()));
  gh.factory<_i15.SignInBloc>(() => _i15.SignInBloc(get<_i13.IAuthFacade>()));
  gh.factory<_i16.SignUpBloc>(() => _i16.SignUpBloc(get<_i13.IAuthFacade>()));
  gh.factory<_i17.AuthBloc>(() => _i17.AuthBloc(get<_i13.IAuthFacade>()));
  return get;
}

class _$RegisterModule extends _i18.RegisterModule {}
