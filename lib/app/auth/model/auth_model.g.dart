// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthenticationModelImpl _$$AuthenticationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthenticationModelImpl(
      userId: (json['userId'] as num?)?.toInt(),
      authuserName: json['authuserName'] as String,
      userPhoneNumber: json['userPhoneNumber'] as String,
      userPassword: json['userPassword'] as String,
    );

Map<String, dynamic> _$$AuthenticationModelImplToJson(
        _$AuthenticationModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'authuserName': instance.authuserName,
      'userPhoneNumber': instance.userPhoneNumber,
      'userPassword': instance.userPassword,
    };
