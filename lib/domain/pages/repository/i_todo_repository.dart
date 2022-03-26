import 'package:dartz/dartz.dart';
import 'package:note_touch/domain/pages/entities/todo.dart';
import 'package:note_touch/domain/pages/repository/page_failure.dart';

//more update depend on backend
// need to think about how to use less data Page so not overwhelming ram with unused data
abstract class ITodoRepository {
  /// Create a Todo of user [uid] with properties [Todo].
  Future<Either<PageFailure, Unit>> create(Todo todo);

  /// Update a Todo of user [uid] with properties [Todo].
  Future<Either<PageFailure, Unit>> update(Todo todo);

  /// Delete a Todo of user [uid] with properties [Todo].
  Future<Either<PageFailure, Unit>> delete(Todo todo);

  /// Return a list of Todo of user [uid] that has PagedId and done state.
  //Stream<Either<PageFailure, Unit>> getAllTags(num pageId,bool done);

}
