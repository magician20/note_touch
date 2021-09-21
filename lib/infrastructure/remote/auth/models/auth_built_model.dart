import 'package:json_annotation/json_annotation.dart';

part 'auth_built_model.g.dart';

/// Login request
@JsonSerializable()
class LoginRequestModel {
  String email;
  String password;

  LoginRequestModel({required this.email, required this.password});

  factory LoginRequestModel.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginRequestModelToJson(this);
}

/// Login response
@JsonSerializable()
class LoginResponseModel {
  @JsonKey(name: 'accesstoken')
  String? accesstoken;

  LoginResponseModel({this.accesstoken});

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseModelToJson(this);
}

///User Response
@JsonSerializable()
class UserResponseModel {
  @JsonKey(name: 'firstName')
  String? firstName;

  @JsonKey(name: 'lastName')
  String? lastName;

  @JsonKey(name: 'email')
  String? email;

  @JsonKey(name: 'userRole')
  String? userRole;

  @JsonKey(name: 'created_at')
  String? createdAt;

  @JsonKey(name: 'updated_at')
  String? updatedAt;

  UserResponseModel(
      {this.firstName,
      this.lastName,
      this.email,
      this.userRole,
      this.createdAt,
      this.updatedAt});

  factory UserResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UserResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserResponseModelToJson(this);
}

/// Register request
@JsonSerializable()
class RegisterRequestModel {
  String firstName;
  String lastName;
  String email;
  String password;

  RegisterRequestModel(
      {required this.firstName,
      required this.lastName,
      required this.email,
      required this.password});

  factory RegisterRequestModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterRequestModelToJson(this);
}
