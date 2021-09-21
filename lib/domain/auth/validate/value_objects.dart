
import 'package:dartz/dartz.dart';
import 'package:note_touch/domain/core/failures.dart';
import 'package:note_touch/domain/core/value_objects.dart';
import 'package:note_touch/domain/core/value_validators.dart';


class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>,String> value;

   factory EmailAddress(String input) {
     return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value) ;

}


class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>,String> value;

   factory Password(String input) {
     return Password._(
      validateLoginPassword(input),
    );
  }

  const Password._(this.value) ;

}


//it's comman wrapper for single line string
class FirstName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory FirstName(String input) {
    return FirstName._(
      validateRegisterName(input),
    );
  }

  const FirstName._(this.value);
}

//it's comman wrapper for single line string
class LastName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory LastName(String input) {
    return LastName._(
      validateRegisterName(input),
    );
  }

  const LastName._(this.value);
}

