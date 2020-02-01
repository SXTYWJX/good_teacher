import 'package:flutter/cupertino.dart';
import 'package:good_teacher/FakeInfo.dart';
import 'package:good_teacher/model/RequestModel.dart';

class RequestProvider extends ChangeNotifier{
  List<RequestModel> requestList = new List<RequestModel>();

  RequestProvider(){
    FakeInfo.requests.forEach(
        (item){
          requestList.add(new RequestModel.fromJson(item));
        }
    );
  }
}