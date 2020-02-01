import 'package:flutter/material.dart';

import 'VideoListPage.dart';
import 'WaterFallPage.dart';

class Teacher extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TeacherState();
  }

}

class _TeacherState extends State<Teacher> with TickerProviderStateMixin{
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController=new TabController(length: 2, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: TabBar(
          tabs: <Widget>[
            Tab(child: Text("简介",style: TextStyle(fontSize: 24, color: Colors.amberAccent))),
            Tab(child: Text("视频", style: TextStyle(fontSize: 24, color: Colors.amberAccent)))
          ],
          controller: _tabController,
        ),
      ),
      body: TabBarView(
          children: <Widget>[
            WaterFallPage(),
            VideoListPage()
          ],
          controller: _tabController
      ),
    );
  }

}