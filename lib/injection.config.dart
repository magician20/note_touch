// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i15;
import 'application/auth/sign_in_bloc/signin_bloc.dart' as _i13;
import 'application/auth/sign_up_bloc/signup_bloc.dart' as _i14;
import 'application/connectivity/connectivity_block.dart' as _i10;
import 'application/theme/theme_bloc.dart' as _i6;
import 'domain/auth/repository/i_auth_facade.dart' as _i11;
import 'domain/local/i_connectivity_facade.dart' as _i3;
import 'infrastructure/local/connection_status.dart' as _i4;
import 'infrastructure/local/html_local_storage.dart' as _i7;
import 'infrastructure/local/secure_storage.dart' as _i5;
import 'infrastructure/remote/auth/auth_facade.dart' as _i12;
import 'infrastructure/remote/auth/auth_service.dart' as _i8;
import 'infrastructure/remote/core/injectable_module.dart'
    as _i16; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.IConnectivityFacade>(() => _i4.ConnectivityService());
  gh.factory<_i5.SecureStorage>(() => _i5.SecureStorage());
  gh.factory<_i6.ThemeBloc>(() => _i6.ThemeBloc());
  gh.factory<_i7.WebStorage>(() => _i7.WebStorage());
  gh.lazySingleton<_i8.AuthService>(() => _i8.AuthService(get<_i9.Dio>()));
  gh.factory<_i10.ConnectivityBloc>(
      () => _i10.ConnectivityBloc(get<_i3.IConnectivityFacade>()));
  gh.lazySingleton<_i11.IAuthFacade>(() => _i12.AuthFacade(
      get<_i8.AuthService>(), get<_i5.SecureStorage>(), get<_i7.WebStorage>()));
  gh.factory<_i13.SignInBloc>(() => _i13.SignInBloc(get<_i11.IAuthFacade>()));
  gh.factory<_i14.SignUpBloc>(() => _i14.SignUpBloc(get<_i11.IAuthFacade>()));
  gh.factory<_i15.AuthBloc>(() => _i15.AuthBloc(get<_i11.IAuthFacade>()));
  gh.singleton<_i9.Dio>(registerModule.dio);
  return get;
}

class _$RegisterModule extends _i16.RegisterModule {}
