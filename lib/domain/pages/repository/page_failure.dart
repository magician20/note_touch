import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_failure.freezed.dart';

@freezed
class PageFailure with _$PageFailure {
  ///Unexpected error occured mean something happen except below
  const factory PageFailure.unexpected() = _Unexpected;

  ///PERMISSION_DENIED
  const factory PageFailure.insufficientPermission() = _InsufficientPermission;

  ///Couldn't do CRUD operations on the page. Was it deleted from another device or id change?
  const factory PageFailure.unableToUpdatePage() = _UnableToUpdate;
}
