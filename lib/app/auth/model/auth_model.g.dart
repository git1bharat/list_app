// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthenticationModelImpl _$$AuthenticationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthenticationModelImpl(
      userId: (json['userId'] as num?)?.toInt(),
      userName: json['userName'] as String,
      userPhoneNumber: json['userPhoneNumber'] as String,
      userPassword: json['userPassword'] as String,
    );

Map<String, dynamic> _$$AuthenticationModelImplToJson(
        _$AuthenticationModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'userName': instance.userName,
      'userPhoneNumber': instance.userPhoneNumber,
      'userPassword': instance.userPassword,
    };
