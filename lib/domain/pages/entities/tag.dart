import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:note_touch/domain/pages/entities/block.dart';
import 'package:note_touch/domain/pages/entities/blockdetails.dart';
import 'package:note_touch/domain/pages/validate/value_objects.dart';

part 'tag.freezed.dart';

@freezed
class Tag with _$Tag implements Block{
  factory Tag({
    @required BlockDetails? details,
    @required LabelName? content,
  }) = _Tag;
}
