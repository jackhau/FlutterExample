import 'dart:ffi';

import 'package:fluttersample/model/user/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_response.freezed.dart';
part 'user_response.g.dart';

@freezed
class UserResponse with _$UserResponse {

  const factory UserResponse({
    required int page,
    required int per_page,
    required List<UserModel> data
  }) = _UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) => _$UserResponseFromJson(json);
}