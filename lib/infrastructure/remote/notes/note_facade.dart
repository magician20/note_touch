import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:note_touch/domain/auth/entities/user.dart';
import 'package:note_touch/domain/auth/repository/auth_failure.dart';
import 'package:note_touch/domain/auth/validate/value_objects.dart';
import 'package:note_touch/domain/core/value_objects.dart';
import 'package:note_touch/domain/pages/repository/i_page_facade.dart';
import 'package:note_touch/infrastructure/local/secure_storage.dart';
import 'package:note_touch/infrastructure/remote/auth/auth_service.dart';
import 'package:note_touch/infrastructure/remote/auth/models/auth_built_model.dart';
import 'package:note_touch/infrastructure/remote/core/constants.dart';

@LazySingleton(as: IPageFacade)
class PageFacade implements IPageFacade {
  //need call Chopper/retrofit services or have object to acess services
  final AuthService _authService;
  final SecureStorage _secureStorage;

  PageFacade(this._authService, this._secureStorage);

}
