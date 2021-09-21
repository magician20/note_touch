import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:note_touch/domain/auth/repository/auth_failure.dart';
import 'package:note_touch/domain/auth/repository/i_auth_facade.dart';
import 'package:note_touch/domain/auth/validate/value_objects.dart';
import 'package:rxdart/rxdart.dart';

part 'signup_bloc.freezed.dart';
part 'signup_event.dart';
part 'signup_state.dart';

// ignore: constant_identifier_names
const DEFAULT_INPUTLOGIN_DEBOUNCE = 300;

@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final IAuthFacade _authFacade;

  SignUpBloc(this._authFacade) : super(SignUpState.initial());

/*
  @override
  SignUpState get initialState => SignUpState.initial();
  */

/*
 * each time the user changes the text input, a new request is sent. So when the user types the 
 * email quickly there will be as many requests as the letters this title contains. good practice in
 * this situation is to wait for a small amount of time and cancel the previous request when 
 * a new one is send This method is called (debounce)>>RXDart
*/
  @override
  Stream<Transition<SignUpEvent, SignUpState>> transformEvents(
      Stream<SignUpEvent> events, transitionFn) {
    final nonDebounceStream = events.where((event) {
      return event is! EmailChanged &&
          event is! PasswordChanged &&
          event is! FirstNameChanged &&
          event is! LastNameChanged;
    });
    final debounceStream = events.where((event) {
      return event is EmailChanged ||
          event is PasswordChanged ||
          event is FirstNameChanged ||
          event is LastNameChanged;
    }).debounceTime(const Duration(milliseconds: DEFAULT_INPUTLOGIN_DEBOUNCE));
    return super.transformEvents(
      nonDebounceStream.mergeWith([debounceStream]),
      transitionFn,
    );
  }

  @override
  Stream<SignUpState> mapEventToState(
    SignUpEvent event,
  ) async* {
    // implement mapEventToState
    yield* event.map(
        emailChanged: _mapEmailChangedToState,
        passwordChanged: _mapPasswordChangedToState,
        firstNameChanged: _mapUserFirstNameChangedToState,
        lastNameChanged: _mapUserLastNameChangedToState,
        registerWithEmailAndPasswordPressed:
            _mapRegisterWithEmailAndPasswordPressedToState);
  }

  Stream<SignUpState> _mapEmailChangedToState(EmailChanged e) async* {
    //generate EmailaddressChanged state
    yield state.copyWith(
      emailAddress: EmailAddress(e.emailStr!),
      authFailureOrSuccessOption: none(),
    );
  }

  Stream<SignUpState> _mapPasswordChangedToState(PasswordChanged e) async* {
    //generate PasswordChanged state
    yield state.copyWith(
      password: Password(e.passwordStr!),
      authFailureOrSuccessOption: none(),
    );
  }

  Stream<SignUpState> _mapUserFirstNameChangedToState(FirstNameChanged e) async* {
    //generate PasswordChanged state
    yield state.copyWith(
      firstName: FirstName(e.firstNameStr!),
      authFailureOrSuccessOption: none(),
    );
  }

    Stream<SignUpState> _mapUserLastNameChangedToState(LastNameChanged e) async* {
    //generate PasswordChanged state
    yield state.copyWith(
      lastName: LastName(e.lastNameStr!),
      authFailureOrSuccessOption: none(),
    );
  }

  Stream<SignUpState> _mapRegisterWithEmailAndPasswordPressedToState(
      RegisterWithEmailAndPasswordPressed e) async* {
    Either<AuthFailure, Unit>? failureOrSuccess;
    //check all values(also first name /last name / phone number)
    final isEmailValid = state.emailAddress!.isValid();
    final isPasswordValid = state.password!.isValid();
    final isFirstNameValid = state.firstName!.isValid();
    final isLastNameValid = state.lastName!.isValid();
    final isUserNameValid = isFirstNameValid && isLastNameValid;
    //check if all valid
    if (isEmailValid && isPasswordValid && isUserNameValid) {
      //sumbit state generated >> show loading screen until data comming
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );
      //USING REPOSITORY TO Register
      failureOrSuccess = await _authFacade.registerWithEmailAndPassword(
          firstName: state.firstName,
          lastName: state.lastName,
          emailAddress: state.emailAddress,
          password: state.password);
    }
    //RegisterSucessOrFailure state generated
    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
