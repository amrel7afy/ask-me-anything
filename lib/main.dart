import 'package:flutter/material.dart';
import 'dart:math';

void main (){
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int question=2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('Ask Me Anything',style: TextStyle(color: Colors.white,fontSize: 30),),
      ),
      backgroundColor: Colors.blue,
      body: Center(child: FlatButton(
        onPressed: (){setState(() {
          question=Random().nextInt(5)+1;
        });} ,
          child: Image(image: AssetImage('images/ball$question.png'),))),
    );
  }
}
