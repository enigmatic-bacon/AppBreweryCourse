import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //Q: What does this do? const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink,
        body: SafeArea(
          child: Container(
            height: 50.0,
            width: 100.0,
            color: Colors.white,
            child: Text('hello'),
            alignment: Alignment.center,
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.all(10.0),
          ),
        ),
      ),
    );
  }
}
