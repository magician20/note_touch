import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:note_touch/domain/pages/entities/block.dart';
import 'package:note_touch/domain/pages/entities/blockdetails.dart';
import 'package:note_touch/domain/pages/validate/value_objects.dart';

part 'text.freezed.dart';

@freezed
class Text with _$Text implements Block{
  factory Text({
    @required BlockDetails? details,
    @required TextBody? content,
  }) = _Text;
}
