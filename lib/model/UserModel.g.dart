// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UserModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return UserModel(
    userID: json['userID'] as String,
    nickName: json['nickName'] as String,
    avatarURL: json['avatarURL'] as String,
    isMale: json['isMale'] as bool,
  );
}

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'userID': instance.userID,
      'nickName': instance.nickName,
      'avatarURL': instance.avatarURL,
      'isMale': instance.isMale,
    };
