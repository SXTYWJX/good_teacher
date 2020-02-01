import 'package:good_teacher/model/UserModel.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ChatListItemModel.g.dart';

@JsonSerializable()

class ChatListItemModel{
    UserModel peerUser;
    String lastUpdateTime;
    String lastMessage;
    String chatContentFilePath;

    ChatListItemModel({this.peerUser, this.lastUpdateTime, this.lastMessage, this.chatContentFilePath});

    factory ChatListItemModel.fromJson(Map<String, dynamic> json) => _$ChatListItemModelFromJson(json);

    Map<String, dynamic> toJson() => _$ChatListItemModelToJson(this);
}