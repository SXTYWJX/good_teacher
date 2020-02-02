import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:good_teacher/FakeInfo.dart';
import 'package:good_teacher/funtion/RobotAssistant.dart';
import 'package:good_teacher/model/UserModel.dart';

class ChatContent extends StatefulWidget{
  UserModel chatWithWhom;

  ChatContent({this.chatWithWhom});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ChatContentState();
  }

}

class _ChatContentState extends State<ChatContent>{
  TextEditingController _textEditingController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _textEditingController=new TextEditingController();
  }

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.chatWithWhom.userID}"),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/chat_background.jpg"), fit: BoxFit.fill)
        ),
        child: ListView.builder(
              itemCount: FakeInfo.chatContentWithRobot.length,
              itemBuilder: (BuildContext context, int index){
                return ChatRow(sender: UserModel.fromJson(FakeInfo.chatContentWithRobot[index]["sender"]),content: FakeInfo.chatContentWithRobot[index]["content"]);
              }
          ),
      ),

      bottomNavigationBar: Container(
        decoration: BoxDecoration(
    image: DecorationImage(image: AssetImage("assets/ocean.jpg"), fit: BoxFit.fill)
    ),
        width: MediaQuery.of(context).size.width,
        height: 123,
        child: Row(
          children: <Widget>[
            SingleChildScrollView(
              child: Container(
                width: 4/5*MediaQuery.of(context).size.width,
                child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: BorderSide(width: 100.0)
                      ),
                    ),
                    controller: _textEditingController
                ),
              ),
            ),
            Expanded(
              child: RaisedButton(
                padding: EdgeInsets.only(left: 10),
                color: Colors.green,
                child: Text("发送", style: TextStyle(fontSize: 18)),
                onPressed: (){
                  if(_textEditingController.text==null || _textEditingController.text=="")return;
                  String msgToBeSent=_textEditingController.text;
                  FakeInfo.chatContentWithRobot.add(
                      {
                        "sender": {
                          "userID": "abcdefgh",
                          "nickName" : "小小斗士",
                          "avatarURL": "assets/god.jpg",
                          "isMale": true
                        },
                        "content": "$msgToBeSent"
                      }
                  );
                  if(widget.chatWithWhom.userID.compareTo("robot123")==0){
                    RobotAssistant x=new RobotAssistant();
                    String response = x.replyToUser(msgToBeSent);
                    if(response!=null){
                      FakeInfo.chatContentWithRobot.add(
                          {
                            "sender": {
                              "userID":"robot123",
                              "nickName": "助教小帮手",
                              "avatarURL": "assets/robot.jpg",
                              "isMale": true
                            },
                            "content": "$response"
                          }
                      );
                    }
                  }
                  setState(() {
                    _textEditingController.text="";

                  });
                },
              ),
            )
          ],
        ),
      )
    );
  }

}

class ChatRow extends StatelessWidget{
  final UserModel sender;
  final String content;

  const ChatRow({Key key, @required this.sender, @required this.content}): super(key:key);

  @override
  Widget build(BuildContext context) {
    double devWidth=MediaQuery.of(context).size.width;
    double devHeight=MediaQuery.of(context).size.height;
    // TODO: implement build
    if(sender==null)print("sender is null now");
    return SingleChildScrollView(
      child: Row(
        mainAxisAlignment: sender==FakeInfo.currentUser?MainAxisAlignment.end:MainAxisAlignment.start,
        children:
        sender==FakeInfo.currentUser?
            <Widget>[
              Container(
                child: Text(content,style: TextStyle(fontSize: 20)),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(devWidth/75)
                ),
              ),

              Container(
                  padding: EdgeInsets.only(left: devWidth/100),
                  child: CircleAvatar(child: Image.asset(sender.avatarURL, fit: BoxFit.fill))
              )
            ]
            :
        <Widget>[
          Container(
              padding: EdgeInsets.only(right: devWidth/100),
              child: CircleAvatar(child: Image.asset(sender.avatarURL, fit: BoxFit.fill))
          ),

          Container(
            child: Text(content, style: TextStyle(fontSize: 20)),
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(devWidth/75)
            ),
          )
        ]
      ),
    );
  }
}

class ChatBoxContainer extends CustomPainter{
  final double width, height;
  final Color color;

  ChatBoxContainer({@required this.width, @required this.height, @required this.color});

  @override
  void paint(Canvas canvas, Size size) {
       Path path= new Path()
                      ..moveTo(0, height/2)
                      ..lineTo(width, height)
                      ..lineTo(width, 0)
                      ..lineTo(0, height/2);
       Paint paint=Paint()
                   ..style=PaintingStyle.fill
                   ..color=color;
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return null;
  }

}