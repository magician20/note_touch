import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:note_touch/infrastructure/remote/core/constants.dart';
import 'package:retrofit/retrofit.dart';

import 'models/auth_built_model.dart';

part 'auth_service.g.dart';

@lazySingleton 
@RestApi(baseUrl: AUTH_BASE_URL_External) //baseUrl: '/auth'
abstract class AuthService {
  @factoryMethod
  factory AuthService(Dio dio) = _AuthService;//{String baseUrl} cause problem for injector file

  @POST('/signup')
  Future<void> signUp(@Body() RegisterRequestModel body);

  @POST('/signin')
  Future<LoginResponseModel> singIn(@Body() LoginRequestModel body);

  //headers: {AUTH_HEADER:BEARER+'authValue'}
  @GET('/auth')
  Future<UserResponseModel> getSignedInUser(@Header(AUTH_HEADER) String authValue); //error return null exception
}
