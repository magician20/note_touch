import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:built_collection/built_collection.dart';
import 'package:note_touch/domain/core/value_objects.dart';
import 'package:note_touch/domain/pages/entities/block.dart';
import 'package:note_touch/domain/pages/repository/page_enum.dart';
import 'package:note_touch/domain/pages/validate/value_objects.dart';

part 'page.freezed.dart';

@freezed
class Page with _$Page {
  factory Page({
    UniqueId? id, //i can pass the id to UniqueId
    @required PageTitle? title,
    @required PageColor? color,
    @required PageStatus? status,
    @required PageState? state,
    @required BuiltList<Block>? block,//weird
    @required DateTime? created_at,
    @required DateTime? updated_at,
  }) = _Page;

  //used to create empty Page
  factory Page.empty() => Page(
        id: UniqueId(),
        title: PageTitle(''),
        color: PageColor(PageColor.predefinedColors[0]),
        status: PageStatus(TaskStatus.OPEN.inString),
        state: PageState(PageStates.unspecified.inString),
        block: BuiltList<Block>(List.empty()),
        created_at: DateTime.now(),
        updated_at: DateTime.now(),
      );

}


