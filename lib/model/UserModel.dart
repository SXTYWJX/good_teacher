import 'package:json_annotation/json_annotation.dart';

part 'UserModel.g.dart';

@JsonSerializable()

class UserModel{
  String userID;
  String nickName;
  String avatarURL;
  bool isMale;

  UserModel({this.userID,this.nickName,this.avatarURL,this.isMale});

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  @override
  // TODO: implement hashCode
  int get hashCode => super.hashCode;

  @override
  bool operator ==(Object other) {
    bool isSameType = other is UserModel;
    if(!isSameType) return false;
    UserModel x=other as UserModel;
    if(userID.compareTo(x.userID) == 0)return true;
    return false;
  }
}