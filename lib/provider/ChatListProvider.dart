import 'package:flutter/cupertino.dart';
import 'package:good_teacher/FakeInfo.dart';
import 'package:good_teacher/model/ChatListItemModel.dart';

class ChatListProvider extends ChangeNotifier{
  List<ChatListItemModel> chats=new List<ChatListItemModel>();

  ChatListProvider(){
    FakeInfo.chatList.forEach(
        (item){
          chats.add(new ChatListItemModel.fromJson(item));
        }
    );
  }
}