import 'package:flutter/material.dart';
import 'Demand.dart';
import 'Teacher.dart';
import 'Chat.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage>{
  int _tabIndex;
  List<Widget> _pageList;
  @override
  void initState() {
    _pageList=[Demand(), Teacher(), Chat()];
    _tabIndex=0;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: _pageList[_tabIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.lightBlue,
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(activeIcon: Icon(Icons.recent_actors,color: Colors.yellowAccent),
              icon: Icon(Icons.recent_actors,color: Colors.white), title: Text("家教需求",style: TextStyle(color: Colors.white))),
          new BottomNavigationBarItem(activeIcon: Icon(Icons.filter,color: Colors.yellowAccent),
              icon: Icon(Icons.filter,color: Colors.white), title: Text("名师风采",style: TextStyle(color: Colors.white))),
          new BottomNavigationBarItem(activeIcon: Icon(Icons.chat,color: Colors.yellowAccent),
              icon: Icon(Icons.chat,color: Colors.white), title: Text("家教沟通",style: TextStyle(color: Colors.white))),
        ],
        currentIndex: _tabIndex,
        onTap: (index){
          setState(() {
            _tabIndex=index;
          });
        }
      ),
    );
  }
}