// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i18;
import 'application/auth/sign_in_bloc/signin_bloc.dart' as _i16;
import 'application/auth/sign_up_bloc/signup_bloc.dart' as _i17;
import 'application/connectivity/connectivity_block.dart' as _i13;
import 'application/theme/theme_bloc.dart' as _i10;
import 'domain/auth/repository/i_auth_facade.dart' as _i14;
import 'domain/local/i_connectivity_facade.dart' as _i7;
import 'infrastructure/core/connection_status.dart' as _i8;
import 'infrastructure/local/html_local_storage.dart' as _i11;
import 'infrastructure/local/secure_storage.dart' as _i9;
import 'infrastructure/remote/auth/auth_facade.dart' as _i15;
import 'infrastructure/remote/auth/auth_service.dart' as _i12;
import 'infrastructure/remote/core/injectable_module.dart' as _i19;
import 'presentation/controllers/cubit/check_box_cubit.dart' as _i3;
import 'presentation/controllers/cubit/drawer_controller.dart' as _i5;
import 'presentation/controllers/cubit/gridview_cubit.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.CheckBoxCubit>(
      () => _i3.CheckBoxCubit(initialState: get<bool>()));
  gh.singleton<_i4.Dio>(registerModule.dio);
  gh.factory<_i5.DrawerControllerCubit>(() => _i5.DrawerControllerCubit());
  gh.factory<_i6.GridviewCubit>(
      () => _i6.GridviewCubit(initialState: get<bool>()));
  gh.lazySingleton<_i7.IConnectivityFacade>(() => _i8.ConnectivityService());
  gh.factory<_i9.SecureStorage>(() => _i9.SecureStorage());
  gh.factory<_i10.ThemeBloc>(() => _i10.ThemeBloc());
  gh.factory<_i11.WebStorage>(() => _i11.WebStorage());
  gh.lazySingleton<_i12.AuthService>(() => _i12.AuthService(get<_i4.Dio>()));
  gh.factory<_i13.ConnectivityBloc>(
      () => _i13.ConnectivityBloc(get<_i7.IConnectivityFacade>()));
  gh.lazySingleton<_i14.IAuthFacade>(
      () => _i15.AuthFacade(get<_i12.AuthService>(), get<_i9.SecureStorage>()));
  gh.factory<_i16.SignInBloc>(() => _i16.SignInBloc(get<_i14.IAuthFacade>()));
  gh.factory<_i17.SignUpBloc>(() => _i17.SignUpBloc(get<_i14.IAuthFacade>()));
  gh.factory<_i18.AuthBloc>(() => _i18.AuthBloc(get<_i14.IAuthFacade>()));
  return get;
}

class _$RegisterModule extends _i19.RegisterModule {}
