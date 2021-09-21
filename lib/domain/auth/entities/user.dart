import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:note_touch/domain/auth/validate/value_objects.dart';
import 'package:note_touch/domain/core/value_objects.dart';


part 'user.freezed.dart';
//part 'user.g.dart';

@freezed
class User with _$User {
  //@JsonSerializable(explicit_to_json: true)
  const factory User(
     StringSingleLine name,
     EmailAddress emailAddress,
     {UniqueId? id,}//idk about that
  ) = _User;

   //factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

