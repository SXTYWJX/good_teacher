import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:good_teacher/FakeInfo.dart';
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
      body: ListView.builder(
          itemCount: FakeInfo.chatContentWithRobot.length,
          itemBuilder: (BuildContext context, int index){
            return ChatRow(sender: UserModel.fromJson(FakeInfo.chatContentWithRobot[index]["sender"]),content: FakeInfo.chatContentWithRobot[index]["content"]);
          }
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: 123,
        child: Row(
          children: <Widget>[
            Container(
              width: 4/5*MediaQuery.of(context).size.width,
              child: TextField(

                  controller: _textEditingController
              ),
            ),
            Expanded(
              child: RaisedButton(
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
              Transform.rotate(
                  angle: pi,
                  child: Container(
                    padding: EdgeInsets.only(top: 1),
                    child: CustomPaint(
                      painter: ChatBoxContainer(width: devWidth/50, height: devHeight/100, color: Colors.yellow),
                    ),
                  )
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
            padding: EdgeInsets.only(top: 1),
            child: CustomPaint(
              painter: ChatBoxContainer(width: devWidth/50, height: devHeight/100, color: Colors.yellow),
            ),
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