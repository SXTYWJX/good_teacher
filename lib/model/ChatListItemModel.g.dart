// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ChatListItemModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatListItemModel _$ChatListItemModelFromJson(Map<String, dynamic> json) {
  return ChatListItemModel(
    peerUser: json['peerUser'] == null
        ? null
        : UserModel.fromJson(json['peerUser'] as Map<String, dynamic>),
    lastUpdateTime: json['lastUpdateTime'] as String,
    lastMessage: json['lastMessage'] as String,
    chatContentFilePath: json['chatContentFilePath'] as String,
  );
}

Map<String, dynamic> _$ChatListItemModelToJson(ChatListItemModel instance) =>
    <String, dynamic>{
      'peerUser': instance.peerUser,
      'lastUpdateTime': instance.lastUpdateTime,
      'lastMessage': instance.lastMessage,
      'chatContentFilePath': instance.chatContentFilePath,
    };
