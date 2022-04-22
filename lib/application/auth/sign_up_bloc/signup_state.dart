part of 'signup_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    //Validated all values
    required EmailAddress? emailAddress,
    required Password? password,
    required FirstName? firstName,
    required LastName? lastName,
    //Whether or not to show input error messages
    required bool? showErrorMessages,
    //Showing a progress indicator
    required bool? isSubmitting,
    //Success or error backend response
    required Option<Either<AuthFailure, Unit>>? authFailureOrSuccessOption,
  }) = _SignUpState;
  factory SignUpState.initial() => SignUpState(
        emailAddress: EmailAddress(''),
        password: Password(''),
        firstName: FirstName(''),
        lastName: LastName(''),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
