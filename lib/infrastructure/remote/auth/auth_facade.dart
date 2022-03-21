import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:note_touch/domain/auth/entities/user.dart';
import 'package:note_touch/domain/auth/repository/auth_failure.dart';
import 'package:note_touch/domain/auth/repository/i_auth_facade.dart';
import 'package:note_touch/domain/auth/validate/value_objects.dart';
import 'package:note_touch/domain/core/value_objects.dart';
import 'package:note_touch/infrastructure/local/secure_storage.dart';
import 'package:note_touch/infrastructure/remote/auth/auth_service.dart';
import 'package:note_touch/infrastructure/remote/auth/models/auth_built_model.dart';
import 'package:note_touch/infrastructure/remote/core/constants.dart';

@LazySingleton(as: IAuthFacade)
class AuthFacade implements IAuthFacade {
  //need call Chopper/retrofit services or have object to acess services
  final AuthService _authService;
  final SecureStorage _secureStorage;

  AuthFacade(this._authService, this._secureStorage);

//optionOf to handle null value by replacing it with none()
  @override
  Future<Option<User>> getSignedInUser() async {
    //1-get the token
    //2-featch data of user from it (we can create new service user/account)
    String? tokenValue = await this._secureStorage.validateToken(JWT_TOKEN_KEY);

    //validate null & empty string
    //any exception happen we will return non() instedof null that mean unauthonticate state
    if (tokenValue?.isEmpty ?? true) {
      return optionOf(null);
    }

    UserResponseModel response;
    try {
      //call retrofit service to get current user & return user mean authonticate state
      response = await _authService.getSignedInUser('$BEARER$tokenValue');
    } on DioError {
      return optionOf(null);
    }

//     catch noInterneterror {
//    // code for handling exception
// }
    if (response == null) {
      return optionOf(null);
    }

    ///Todo: Need To Update User Class to take the data
    var userName = '${response.firstName} ${response.lastName}';
    return optionOf(
        User(StringSingleLine(userName), EmailAddress(response.email!)));
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {FirstName? firstName,
      LastName? lastName,
      EmailAddress? emailAddress,
      Password? password}) async {
    final emailAddressStr = emailAddress!.getOrCrash();
    final passwordStr = password!.getOrCrash();
    final firstNameStr = firstName!.getOrCrash();
    final lastNameStr = lastName!.getOrCrash();
    //create the Model Body
    RegisterRequestModel body = RegisterRequestModel(
        firstName: firstNameStr,
        lastName: lastNameStr,
        email: emailAddressStr,
        password: passwordStr);
    //Retrofit Code to Call register service to create user account

    try {
      await _authService.signUp(body).then((value) => null);
    } on DioError catch (error) {
      if (error.response!.statusCode == 409) {
        return left(const AuthFailure.emailAlreadyInUse()); //statusCode==409
      } else
        return left(const AuthFailure.serverError());
    }
    return right(unit);
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {EmailAddress? emailAddress, Password? password}) async {
    //validate email before pass the value
    final emailAddressStr = emailAddress!.getOrCrash();
    //wtf i do here iam trying to only pass value without validating
    final passwordStr = password!.value.fold((l) => 'null', (r) => r); //noob cause of null
    //Retrofit code to signIn with service to our back-end and return AUTH Token
    LoginRequestModel body =
        LoginRequestModel(email: emailAddressStr, password: passwordStr);
    LoginResponseModel response;
    try {
      response = await _authService.singIn(body);
    } on DioError catch (error) {
      if (error.response!.statusCode == 401) {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      }
      //what about if no internet? or server not online?
      //code here
      return left(const AuthFailure.serverError());
    }
    if (response.accesstoken == null) {
      return left(const AuthFailure.serverError());
    }

    //here we need to add the tokenData to secure storage for mobile & web
    //web store (need to handle by using cookies)
    var value = await this
        ._secureStorage
        .writeWithValidate(JWT_TOKEN_KEY, response.accesstoken);
    if (value == -1) return left(const AuthFailure.storageWriteFailed());
    return right(unit);
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() {
    // ignore: todo
    // TODO: implement signInWithGoogle
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() async {
    //1-remove token
    //2- maybe try to know if any process running and choose to wait until finish or kill the process
    await this._secureStorage.deleteSecureData(JWT_TOKEN_KEY);
    // if (!kIsWeb) {
    //   await this._secureStorage.deleteSecureData(JWT_TOKEN_KEY);
    // } else {
    //   await this._webStorage.deleteSecureData("csrf");
    // }
  }
}
