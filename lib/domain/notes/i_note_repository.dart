import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:note_touch/domain/notes/note.dart';
import 'package:note_touch/domain/notes/note_failure.dart';


//more update depend on backend
// need to think about how to use less data note so not overwhelming ram with unused data
abstract class INoteRepository {
  /// Returns All the notes collection of the user [uid].
  Stream<Either<NoteFailure, KtList<Note>>> watchAll();
 /// Returns All the notes collection of the user [uid] depend of sate/which page navigate to.
  Stream<Either<NoteFailure, KtList<Note>>> watchUncompleted();

  /// Create a note of user [uid] with properties [note].
  Future<Either<NoteFailure, Unit>> create(Note note);

  /// Update a note of user [uid] with properties [note].
  Future<Either<NoteFailure, Unit>> update(Note note);

  /// Delete a note of user [uid] with properties [note].
  Future<Either<NoteFailure, Unit>> delete(Note note);

  /// Update a note to the [state], using information in the [command].
  Future<Either<NoteFailure, Unit>> updateNoteState(Note note);

  /// Update a note to the [status], using information in the [command].
  Future<Either<NoteFailure, Unit>> updateNoteStatus(Note note);

  /// Search for notes depend on states or status or title or body.
}
