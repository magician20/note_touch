import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:note_touch/domain/core/failures.dart';
import 'package:note_touch/domain/core/value_objects.dart';
import 'package:note_touch/domain/core/value_transformers.dart';
import 'package:note_touch/domain/core/value_validators.dart';

class TextBody extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 1000;

  factory TextBody(String input) {
    return TextBody._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const TextBody._(this.value);
}

class PageStatus extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PageStatus(String input) {
    return PageStatus._(
      validatePageStatus(input),
    );
  }

  const PageStatus._(this.value);
}

class PageState extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PageState(String input) {
    return PageState._(
      validatePageState(input),
    );
  }

  const PageState._(this.value);
}

//need to handle color from string to color && from color to String
class PageColor extends ValueObject<Color> {
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
  factory PageColor(Color input) {
    return PageColor._(
      right(makeColorOpaque(input)),
    );
  }

  const PageColor._(this.value);
}


class LabelName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 20;

  factory LabelName(String input) {
    return LabelName._(
      validateMaxStringLength(input, maxLength)
          .flatMap(validateStringNotEmpty)
          .flatMap(validateSingleLine),
    );
  }

  const LabelName._(this.value);
}

class PageTitle extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 20;

  factory PageTitle(String input) {
    return PageTitle._(
      validateMaxStringLength(input, maxLength)
          .flatMap(validateStringNotEmpty)
          .flatMap(validateSingleLine),
    );
  }

  const PageTitle._(this.value);
}

//for List Page validate(Check if it's hold block type)
// class List3<T> extends ValueObject<KtList<T>> {
//   @override
//   final Either<ValueFailure<KtList<T>>, KtList<T>> value;

// }
