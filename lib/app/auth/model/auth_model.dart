import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

@freezed
class AuthenticationModel with _$AuthenticationModel {
  factory AuthenticationModel({
    int? userId,
    required String userName,
    required String userPhoneNumber,
    required String userPassword,
  }) = _AuthenticationModel;
  factory AuthenticationModel.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationModelFromJson(json);
}

final userData = [
  AuthenticationModel(
      userName: "Bharat",
      userPhoneNumber: "9111174235",
      userPassword: 'bharat123')
];
