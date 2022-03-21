import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:note_touch/domain/core/value_objects.dart';
import 'package:note_touch/domain/notes/value_objects.dart';


part 'note_label.freezed.dart';

@freezed
class NoteLabel with _$NoteLabel {

  const factory NoteLabel(
    LabelName label, {
    UniqueId? id,
  }) = _NoteLabel;

  factory NoteLabel.empty() => NoteLabel(
        LabelName(''),
        id: UniqueId(),
      );
      
}
