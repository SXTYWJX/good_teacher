import 'package:flutter/material.dart';
import 'package:good_teacher/funtion/DoubanListView.dart';

class WaterFallPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _WaterFallPageState();
  }

}

class _WaterFallPageState extends State<WaterFallPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: DouBanListView(),
    );
  }

}