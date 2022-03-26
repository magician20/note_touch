import 'package:dartz/dartz.dart';
import 'package:note_touch/domain/pages/entities/tag.dart';
import 'package:note_touch/domain/pages/repository/page_failure.dart';


//more update depend on backend
// need to think about how to use less data Page so not overwhelming ram with unused data
abstract class ITagRepository {

  /// Create a Tag of user [uid] with properties [Tag].
  Future<Either<PageFailure, Unit>> create(Tag tag);

  /// Update a Tag of user [uid] with properties [Tag].
  Future<Either<PageFailure, Unit>> update(Tag tag);

  /// Delete a Tag of user [uid] with properties [Tag].
  Future<Either<PageFailure, Unit>> delete(Tag tag);

  /// Return a list of Tag of user [uid] for soecific page.
  //Stream<Either<PageFailure, Unit>> getAllTags(num pageId);

}
