import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:note_touch/domain/core/value_objects.dart';
import 'package:note_touch/domain/pages/entities/block.dart';
import 'package:note_touch/domain/pages/entities/blockdetails.dart';

part 'todo.freezed.dart';

@freezed
class Todo with _$Todo implements Block {
  const factory Todo({
    @required BlockDetails? details,
    @required StringSingleLine? content,
    @required bool? done,
  }) = _Todo;

  // factory Todo.empty() => Todo(
  //       details: ,//need values at runtime
  //       content: StringSingleLine(''),
  //       done: false,
  //     );

}
