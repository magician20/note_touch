import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:note_touch/domain/auth/entities/user.dart';
import 'package:note_touch/domain/auth/validate/value_objects.dart';


import 'auth_failure.dart';

/*Facade is a design pattern for connecting two or more classes with weird interfaces 
 *into just one simplified interface
 */

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required FirstName? firstName,
    @required LastName? lastName,
    @required EmailAddress? emailAddress,
    @required Password? password,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress? emailAddress,
    @required Password? password,
  });
  Future<Option<User>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> signInWithGoogle();//not used
  Future<void> signOut();
}
