import 'package:freezed_annotation/freezed_annotation.dart';
//import 'package:kt_dart/collection.dart';
import 'package:note_touch/domain/core/value_objects.dart';
import 'package:note_touch/domain/notes/note_enum.dart';
import 'package:note_touch/domain/notes/value_objects.dart';


part 'note.freezed.dart';

@freezed
class Note with _$Note {
  const Note._();

  const factory Note({
    UniqueId? id, //i can pass the id to UniqueId
    @required StringSingleLine? title,
    @required NoteBody? body,
    @required NoteColor? color,
    @required NoteStatus? noteStatus,
    @required NoteState? noteStat,
    //List3<NoteLabel?> noteLabels, //need to upgrade backend
    // @required DateTime createdAt,
    // @required DateTime modifiedAt,
  }) = _Note;

  //used to create empty note
  factory Note.empty() => Note(
        id: UniqueId(),
        title: StringSingleLine(''),
        body: NoteBody(''),
        color: NoteColor(NoteColor.predefinedColors[0]),
        noteStatus: NoteStatus(TaskStatus.OPEN.inString),
        noteStat: NoteState(NoteStates.unspecified.inString),
        //noteLabels:List3(emptyList()),
        // createdAt:DateTime.now(),
        // modifiedAt:DateTime.now(),
      );
}
