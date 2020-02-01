import 'package:good_teacher/model/UserModel.dart';

abstract class FakeInfo{

  static UserModel currentUser =new UserModel(
    userID: "abcdefgh", nickName: "小小斗士", avatarURL: "assets/god.jpg", isMale: true
  );

  static List requests=[
    {
       "poster":{
         "userID":"aaaaaaaaaaaaa",
         "nickName": "张三",
         "avatarURL": "assets/avatar1.jpeg",
         "isMale": false
       },
       "subject":"初中英语",
       "frequency": "每周六晚",
       "location": "家里",
       "salary": "150RMB/h"
    },
    {
      "poster":{
        "userID":"bbbbbbbbbbbbb",
        "nickName": "李四",
        "avatarURL": "assets/avatar2.jpeg",
        "isMale": false
      },
      "subject":"初中英语",
      "frequency": "每周六晚",
      "location": "家里",
      "salary": "150RMB/h"
    },
    {
      "poster":{
        "userID":"cccccccccc",
        "nickName": "王五",
        "avatarURL": "assets/avatar3.jpeg",
        "isMale": false
      },
      "subject":"初中英语",
      "frequency": "每周六晚",
      "location": "家里",
      "salary": "150RMB/h"
    },
    {
      "poster":{
        "userID":"ddddddddddddd",
        "nickName": "赵谦",
        "avatarURL": "assets/avatar4.jpeg",
        "isMale": false
      },
      "subject":"初中英语",
      "frequency": "每周六晚",
      "location": "家里",
      "salary": "150RMB/h"
    },
    {
      "poster":{
        "userID":"eeeeeeeeeeee",
        "nickName": "孙六",
        "avatarURL": "assets/avatar5.jpeg",
        "isMale": false
      },
      "subject":"初中英语",
      "frequency": "每周六晚",
      "location": "家里",
      "salary": "150RMB/h"
    }
  ];

  static List chatList = [
    {
      "peerUser":{
        "userID":"robot123",
        "nickName": "助教小帮手",
        "avatarURL": "assets/robot.jpg",
        "isMale": true
      },
      "lastUpdateTime": "2020-01-31 17:24:12.933836",
      "lastMessage": "有什么可以帮到您的吗？",
      "chatContentFilePath": "chats/robot123_${currentUser.userID}.json"
    }
  ];

  static List chatContentWithRobot = [
    {
      "sender":{
        "userID":"robot123",
        "nickName": "助教小帮手",
        "avatarURL": "assets/robot.jpg",
        "isMale": true
      },
      "content": "有什么能帮到您吗？"
    },
    {
      "sender": {
        "userID": "abcdefgh",
        "nickName" : "小小斗士",
        "avatarURL": "assets/god.jpg",
        "isMale": true
      },
      "content": "are you okay？"
    },
  ];
}