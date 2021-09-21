import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:note_touch/domain/auth/repository/auth_failure.dart';
import 'package:note_touch/domain/auth/repository/i_auth_facade.dart';
import 'package:note_touch/domain/auth/validate/value_objects.dart';
import 'package:rxdart/rxdart.dart';

part 'signin_bloc.freezed.dart';
part 'signin_event.dart';
part 'signin_state.dart';

// ignore: constant_identifier_names
const DEFAULT_INPUTLOGIN_DEBOUNCE = 300;

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final IAuthFacade _authFacade;

  SignInBloc(this._authFacade) : super(SignInState.initial());
  /*
  @override
  SignInState get initialState => SignInState.initial();
  */

/*
 * each time the user changes the text input, a new request is sent. So when the user types the 
 * email quickly there will be as many requests as the letters this title contains. good practice in
 * this situation is to wait for a small amount of time and cancel the previous request when 
 * a new one is send This method is called (debounce)>>RXDart
*/
  @override
  Stream<Transition<SignInEvent, SignInState>> transformEvents(
      Stream<SignInEvent> events, transitionFn) {
    final nonDebounceStream = events.where((event) {
      return event is! EmailChanged && event is! PasswordChanged;
    });
    final debounceStream = events.where((event) {
      return event is EmailChanged || event is PasswordChanged;
    }).debounceTime(const Duration(milliseconds: DEFAULT_INPUTLOGIN_DEBOUNCE));
    return super.transformEvents(
      nonDebounceStream.mergeWith([debounceStream]),
      transitionFn,
    );
  }

  @override
  Stream<SignInState> mapEventToState(SignInEvent event) async* {
    // implement mapEventToState
    yield* event.map(
        //validate value when writing
        emailChanged: _mapEmailChangedToState,
        //validate value when writing
        passwordChanged: _mapPasswordChangedToState,
        signInWithEmailAndPasswordPressed:
            _mapSignInWithEmailAndPasswordPressedToState,
        signInWithGooglePressed: _mapSignInWithGooglePressedToState);
  }

  //*********************Implemention for generate Sates*************/
  Stream<SignInState> _mapEmailChangedToState(EmailChanged e) async* {
    //generate EmailaddressChanged state
    yield state.copyWith(
      emailAddress: EmailAddress(e.emailStr!),
      authFailureOrSuccessOption: none(),
    );
  }

  Stream<SignInState> _mapPasswordChangedToState(PasswordChanged e) async* {
    //generate PasswordChanged state
    yield state.copyWith(
      password: Password(e.passwordStr!),
      authFailureOrSuccessOption: none(),
    );
  }

  Stream<SignInState> _mapSignInWithEmailAndPasswordPressedToState(
      SignInWithEmailAndPasswordPressed e) async* {
    Either<AuthFailure, Unit>? failureOrSuccess;

    final isEmailValid = state.emailAddress!.isValid();
    //here not need to Check passowrd validate only if it's empty
    // final isPasswordValid = state.password!.value.foldRight(null, (r, previous) => r);//need to be updated
    //check both valid
    if (isEmailValid) {
      //sumbit state generated >> show loading screen until data comming
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );
      //USING REPOSITORY TO SIGNIN
      failureOrSuccess = await _authFacade.signInWithEmailAndPassword(
          emailAddress: state.emailAddress, password: state.password);
    }
    //SignInSucessOrFailure state generated
    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }

  Stream<SignInState> _mapSignInWithGooglePressedToState(
      SignInWithGooglePressed e) async* {
    //sumbit state generated >> show loading screen until data comming
    yield state.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    );
    //USING REPOSITORY TO SIGNIN
    final failureOrSuccess = await _authFacade.signInWithGoogle();
    //SignInSucessOrFailure state generated
    yield state.copyWith(
        isSubmitting: false,
        authFailureOrSuccessOption: some(failureOrSuccess));
  }
}
