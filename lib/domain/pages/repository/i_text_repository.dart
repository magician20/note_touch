import 'package:dartz/dartz.dart';
import 'package:note_touch/domain/pages/entities/text.dart';
import 'package:note_touch/domain/pages/repository/page_failure.dart';



//more update depend on backend
// need to think about how to use less data Page so not overwhelming ram with unused data
abstract class ITextRepository {

  /// Create a Text of user [uid] with properties [Text].
  Future<Either<PageFailure, Unit>> create(Text text);

  /// Update a Text of user [uid] with properties [Text].
  Future<Either<PageFailure, Unit>> update(Text text);

  /// Delete a Text of user [uid] with properties [Text].
  Future<Either<PageFailure, Unit>> delete(Text text);
  

}
