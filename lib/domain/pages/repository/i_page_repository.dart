import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:note_touch/domain/pages/entities/page.dart';
import 'package:note_touch/domain/pages/repository/page_failure.dart';



//more update depend on backend
// need to think about how to use less data Page so not overwhelming ram with unused data
abstract class IPageRepository {
  /// Returns All the Pages collection of the user [uid].
  Stream<Either<PageFailure, KtList<Page>>> watchAll();
 /// Returns All the Pages collection of the user [uid] depend of sate/which page navigate to.
  Stream<Either<PageFailure, KtList<Page>>> watchUncompleted();

  /// Create a Page of user [uid] with properties [Page].
  Future<Either<PageFailure, Unit>> create(Page page);

  /// Update a Page of user [uid] with properties [Page].
  Future<Either<PageFailure, Unit>> update(Page page);

  /// Delete a Page of user [uid] with properties [Page].
  Future<Either<PageFailure, Unit>> delete(Page page);

  /// Update a Page to the [state], using information in the [command].
  Future<Either<PageFailure, Unit>> updatePageState(Page page);

  /// Update a Page to the [status], using information in the [command].
  Future<Either<PageFailure, Unit>> updatePageStatus(Page page);

  /// Search for Pages of user [uid] depend on states or status or title or body.
   Stream<Either<PageFailure, KtList<Page>>> searchList();
}
