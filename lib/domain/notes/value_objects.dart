import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:note_touch/domain/core/failures.dart';
import 'package:note_touch/domain/core/value_objects.dart';
import 'package:note_touch/domain/core/value_transformers.dart';
import 'package:note_touch/domain/core/value_validators.dart';


class NoteBody extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 1000;

  factory NoteBody(String input) {
    return NoteBody._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const NoteBody._(this.value);
}

class NoteStatus extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory NoteStatus(String input) {
    return NoteStatus._(
      validateNoteStatus(input),
    );
  }

  const NoteStatus._(this.value);
}

class NoteState extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory NoteState(String input) {
    return NoteState._(
      validateNoteState(input),
    );
  }

  const NoteState._(this.value);
}


//need to handle color from string to color && from color to String
class NoteColor extends ValueObject<Color> {
  static const List<Color> predefinedColors = [
    Color(0xfffafafa), // canvas
    Color(0xfffa8072), // salmon
    Color(0xfffedc56), // mustard
    Color(0xffd0f0c0), // tea
    Color(0xfffca3b7), // flamingo
    Color(0xff997950), // tortilla
    Color(0xfffffdd0), // cream
  ];

  @override
  final Either<ValueFailure<Color>, Color> value;

//color input will be first transform from String to color
  factory NoteColor(Color input) {
    return NoteColor._(
      right(makeColorOpaque(input)),
    );
  }

  const NoteColor._(this.value);
}

//for List Note validate
class List3<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;

  static const maxLength = 3;

  factory List3(KtList<T> input) {
    return List3._(
      validateMaxListLength(input, maxLength),
    );
  }

  const List3._(this.value);

  int get length {
    return value.getOrElse(() => emptyList()).size;
  }

  bool get isFull {
    return length == maxLength;
  }
}


class LabelName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 10;

  factory LabelName(String input) {
    return LabelName._(
      validateMaxStringLength(input, maxLength)
          .flatMap(validateStringNotEmpty)
          .flatMap(validateSingleLine),
    );
  }

  const LabelName._(this.value);
}

// class TodoName extends ValueObject<String> {
//   @override
//   final Either<ValueFailure<String>, String> value;

//   static const maxLength = 30;

//   factory TodoName(String input) {
//     return TodoName._(
//       validateMaxStringLength(input, maxLength)
//           .flatMap(validateStringNotEmpty)
//           .flatMap(validateSingleLine),
//     );
//   }

//   const TodoName._(this.value);
// }