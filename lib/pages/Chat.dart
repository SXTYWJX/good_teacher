import 'package:flutter/material.dart';
import 'package:good_teacher/pages/ChatContent.dart';
import 'package:good_teacher/provider/ChatListProvider.dart';
import 'package:provider/provider.dart';

class Chat extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ChatState();
  }

}

class _ChatState extends State<Chat>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("沟通列表"),
      ),
      body: MultiProvider(
        providers: [
          ChangeNotifierProvider.value(value: ChatListProvider()),
        ],
        child: ChatList(),
      )
    );
  }

}

class ChatList extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ChatListState();
  }

}

class _ChatListState extends State<ChatList>{
  @override
  Widget build(BuildContext context) {
    ChatListProvider chatListProvider=Provider.of<ChatListProvider>(context);
    if(chatListProvider==null){
      return Center(
        child: CircularProgressIndicator(),
      );
    }
    // TODO: implement build
    return ListView.builder(
        itemCount: chatListProvider.chats.length,
        itemBuilder: (BuildContext context, int index){
          return ListTile(
            //Image.asset(provider.requestList[index].poster.avatarURL)
            leading: SizedBox(
                width: MediaQuery.of(context).size.width/6,
                height: MediaQuery.of(context).size.height/10,
                child: Image.asset(chatListProvider.chats[index].peerUser.avatarURL)),
            title: Text(chatListProvider.chats[index].peerUser.nickName),
            subtitle: Text(chatListProvider.chats[index].lastMessage),
            trailing: Text(chatListProvider.chats[index].lastUpdateTime),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return ChatContent(chatWithWhom: chatListProvider.chats[index].peerUser);
              }));
            },
          );
        });
  }

}