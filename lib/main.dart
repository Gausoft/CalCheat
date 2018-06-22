import 'package:flutter/material.dart';
import 'homePage.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title: "CalCheat",
      theme: new ThemeData(
        primarySwatch: Colors.lightBlue,
        scaffoldBackgroundColor: Colors.red.shade100
      ),
      home: new HomePage(),
    );
  }
} 