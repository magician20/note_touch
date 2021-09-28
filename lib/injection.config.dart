// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i16;
import 'application/auth/sign_in_bloc/signin_bloc.dart' as _i14;
import 'application/auth/sign_up_bloc/signup_bloc.dart' as _i15;
import 'application/connectivity/connectivity_block.dart' as _i11;
import 'application/theme/theme_bloc.dart' as _i8;
import 'domain/auth/repository/i_auth_facade.dart' as _i12;
import 'domain/local/i_connectivity_facade.dart' as _i5;
import 'infrastructure/local/connection_status.dart' as _i6;
import 'infrastructure/local/html_local_storage.dart' as _i9;
import 'infrastructure/local/secure_storage.dart' as _i7;
import 'infrastructure/remote/auth/auth_facade.dart' as _i13;
import 'infrastructure/remote/auth/auth_service.dart' as _i10;
import 'infrastructure/remote/core/injectable_module.dart' as _i17;
import 'presentation/controllers/cubit/gridview_cubit.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.singleton<_i3.Dio>(registerModule.dio);
  gh.factory<_i4.GridviewCubit>(
      () => _i4.GridviewCubit(initialState: get<bool>()));
  gh.lazySingleton<_i5.IConnectivityFacade>(() => _i6.ConnectivityService());
  gh.factory<_i7.SecureStorage>(() => _i7.SecureStorage());
  gh.factory<_i8.ThemeBloc>(() => _i8.ThemeBloc());
  gh.factory<_i9.WebStorage>(() => _i9.WebStorage());
  gh.lazySingleton<_i10.AuthService>(() => _i10.AuthService(get<_i3.Dio>()));
  gh.factory<_i11.ConnectivityBloc>(
      () => _i11.ConnectivityBloc(get<_i5.IConnectivityFacade>()));
  gh.lazySingleton<_i12.IAuthFacade>(() => _i13.AuthFacade(
      get<_i10.AuthService>(),
      get<_i7.SecureStorage>(),
      get<_i9.WebStorage>()));
  gh.factory<_i14.SignInBloc>(() => _i14.SignInBloc(get<_i12.IAuthFacade>()));
  gh.factory<_i15.SignUpBloc>(() => _i15.SignUpBloc(get<_i12.IAuthFacade>()));
  gh.factory<_i16.AuthBloc>(() => _i16.AuthBloc(get<_i12.IAuthFacade>()));
  return get;
}

class _$RegisterModule extends _i17.RegisterModule {}
