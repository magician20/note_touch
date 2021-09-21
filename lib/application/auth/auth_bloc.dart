import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:note_touch/domain/auth/entities/user.dart';
import 'package:note_touch/domain/auth/repository/i_auth_facade.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;

  AuthBloc(this._authFacade):super (const Initial());

/*
  @override
  AuthState get initialState => const AuthState.initial();
  */

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    // implement mapEventToState
    yield* event.map(
        authCheckRequested: _mapAppStartedToState,
        signedOut: _mapLoggedOutToState);
  }

  Stream<AuthState> _mapAppStartedToState(_) async* {
    //check id user authed and it will return user or none
    final userOption = await _authFacade.getSignedInUser(); // Error
    yield userOption.fold(
      //generate unauthenticated state if hold none(this tell ui user not loged in)
      () => const AuthState.unauthenticated(),
      //generate authenticated state if hold User(this tell ui user already loged in)
      (user) => AuthState.authenticated(user),
    );
  }

  Stream<AuthState> _mapLoggedOutToState(_) async* {
    //will call logout then
    await _authFacade.signOut();
    //generate unauthenticated state or myabe show loafing before change state
    yield const AuthState.unauthenticated();
  }
  
}
