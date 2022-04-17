// import 'package:json_annotation/json_annotation.dart';
// import 'package:note_touch/domain/core/value_objects.dart';
// import 'package:note_touch/domain/pages/entities/block.dart';
// import 'package:note_touch/domain/pages/validate/value_objects.dart';

// part 'page_built_model.g.dart';

// @JsonSerializable()
// class CreatePageDto {
//     UniqueId? id;
//     PageTitle? title;
//     PageColor? color;
//     PageStatus? status;
//     PageState? state;

//   CreatePageDto({required this.id, required this.title,this.color,this.status,this.state});

//   factory CreatePageDto.fromJson(Map<String, dynamic> json) =>
//       _$CreatePageDtoFromJson(json);

//   Map<String, dynamic> toJson() => _$CreatePageDtoToJson(this);
// }


// @JsonSerializable()
// class PageDto {
//     UniqueId? id;
//   //  string? object,
//     PageTitle? title;
//     PageColor? color;
//     PageStatus? status;
//     PageState? state;
//     List<Block>? content;
//     DateTime? created_at;
//     DateTime? updated_at;

//   PageDto({required this.id, required this.title,this.color,this.status,this.state,this.content,this.created_at,this.updated_at,});

//   factory PageDto.fromJson(Map<String, dynamic> json) =>
//       _$PageDtoFromJson(json);

//   Map<String, dynamic> toJson() => _$PageDtoToJson(this);
// }