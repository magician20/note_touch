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

  SignInBloc(this._authFacade) : super(SignInState.initial()) {
    on<EmailChanged>(_mapEmailChangedToState);
    on<PasswordChanged>(_mapPasswordChangedToState);
    on<SignInWithEmailAndPasswordPressed>(
        _mapSignInWithEmailAndPasswordPressedToState);
    on<SignInWithGooglePressed>(_mapSignInWithGooglePressedToState);
  }

  @override
  void onTransition(Transition<SignInEvent, SignInState> transition) {
    print(transition);
    super.onTransition(transition);
  }


/*
 * each time the user changes the text input, a new request is sent. So when the user types the 
 * email quickly there will be as many requests as the letters this title contains. good practice in
 * this situation is to wait for a small amount of time and cancel the previous request when 
 * a new one is send This method is called (debounce)>>RXDart
*/
  // @override
  // Stream<Transition<SignInEvent, SignInState>> transformEvents(
  //     Stream<SignInEvent> events, transitionFn) {
  //   final nonDebounceStream = events.where((event) {
  //     return event is! EmailChanged && event is! PasswordChanged;
  //   });
  //   final debounceStream = events.where((event) {
  //     return event is EmailChanged || event is PasswordChanged;
  //   }).debounceTime(const Duration(milliseconds: DEFAULT_INPUTLOGIN_DEBOUNCE));
  //   return super.transformEvents(
  //     nonDebounceStream.mergeWith([debounceStream]),
  //     transitionFn,
  //   );
  // }


  //*********************Implemention for generate Sates*************/
  Future<void> _mapEmailChangedToState(
      EmailChanged e, Emitter<SignInState> emit) async {
    //generate EmailaddressChanged state
    emit(state.copyWith(
      emailAddress: EmailAddress(e.emailStr!),
      authFailureOrSuccessOption: none(),
    ));
  }

  Future<void> _mapPasswordChangedToState(
      PasswordChanged e, Emitter<SignInState> emit) async {
    //generate PasswordChanged state
    emit(state.copyWith(
      password: Password(e.passwordStr!),
      authFailureOrSuccessOption: none(),
    ));
  }

  Future<void> _mapSignInWithEmailAndPasswordPressedToState(
      SignInWithEmailAndPasswordPressed e, Emitter<SignInState> emit) async{
    Either<AuthFailure, Unit>? failureOrSuccess;

    final isEmailValid = state.emailAddress!.isValid();
    //here not need to Check passowrd validate only if it's empty
    // final isPasswordValid = state.password!.value.foldRight(null, (r, previous) => r);//need to be updated
    //check both valid
    if (isEmailValid) {
      //sumbit state generated >> show loading screen until data comming
      emit( state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      ));
      //USING REPOSITORY TO SIGNIN
      failureOrSuccess = await _authFacade.signInWithEmailAndPassword(
          emailAddress: state.emailAddress, password: state.password);
    }
    //SignInSucessOrFailure state generated
    emit(state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    ));
  }

  Future<void> _mapSignInWithGooglePressedToState(
      SignInWithGooglePressed e, Emitter<SignInState> emit) async {
    //sumbit state generated >> show loading screen until data comming
    emit(state.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    ));
    //USING REPOSITORY TO SIGNIN
    final failureOrSuccess = await _authFacade.signInWithGoogle();
    //SignInSucessOrFailure state generated
    emit(state.copyWith(
        isSubmitting: false,
        authFailureOrSuccessOption: some(failureOrSuccess)));
  }
}
