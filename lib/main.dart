import 'package:flutter/material.dart';
import 'pages/HomePage.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // materialApp
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "find good teachers",
      home: HomePage(),
    );
  }

}