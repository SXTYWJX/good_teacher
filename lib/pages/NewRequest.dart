import 'package:flutter/material.dart';
import 'package:good_teacher/FakeInfo.dart';

class NewRequest extends StatefulWidget {


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _NewRequestState();
  }
}


  class _NewRequestState extends State<NewRequest>{

    TextEditingController subjectCtrl = new TextEditingController();
    TextEditingController freqCtrl = new TextEditingController();
    TextEditingController locationCtrl = new TextEditingController();
    TextEditingController salaryCtrl = new TextEditingController();

    void submitRequest(BuildContext context){
      FakeInfo.requests.insert(0, {
        "poster":FakeInfo.currentUser.toJson(),
        "subject":subjectCtrl.text,
        "frequency": freqCtrl.text,
        "location": locationCtrl.text,
        "salary": salaryCtrl.text
      });
      Navigator.of(context).pop();
    }

  @override
  Widget build(BuildContext context) {
    double devHeight = MediaQuery.of(context).size.height;
    double devWidth = MediaQuery.of(context).size.width;
    /*FakeInfo.requests.insert(0,{
      "poster":{
        "userID":"ffffffffffffffff",
        "nickName": "王二麻子",
        "avatarURL": "assets/avatar1.jpeg",
        "isMale": false
      },
      "subject":"初中英语",
      "frequency": "每周六晚",
      "location": "家里",
      "salary": "150RMB/h"
    });*/
    // table for you to post new request
    return Scaffold(
        appBar: AppBar(
          title: Text("找个家教老师"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.title),
                    hintText: "请输入补习科目"
                  ),
                  controller: subjectCtrl
                ),
                SizedBox(height: devHeight/10 ),
              TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      icon: Icon(Icons.date_range),
                      hintText: "请输入补课时间"
                  ),
                  controller: freqCtrl
              ),
              SizedBox(height: devHeight/10 ),
              TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      icon: Icon(Icons.location_city),
                      hintText: "请输入补课地点"
                  ),
                  controller: locationCtrl
              ),
              SizedBox(height: devHeight/10 ),
              TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      icon: Icon(Icons.attach_money),
                      hintText: "请输入可支付薪酬"
                  ),
                  controller: salaryCtrl
              ),
              SizedBox(height: devHeight/10),
              RaisedButton(
                child: Text("发布"),
                onPressed: (){
                  submitRequest(context);
                }
              )
            ],
          ),
        ),
    );
  }

}