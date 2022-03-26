import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:note_touch/domain/core/value_objects.dart';

part 'blockdetails.freezed.dart';

@freezed
class BlockDetails with _$BlockDetails {
  factory BlockDetails({
    UniqueId? id, //i can pass the id to UniqueId
    @required num? order,
    @required num? pageId,
    @required DateTime? created_at,
    @required DateTime? updated_at,
  }) = _BlockDetails;

}
