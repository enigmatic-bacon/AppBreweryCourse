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
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: double.infinity,
              ),
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/profile.jpg'),
              ),
              Text(
                'ALEX BISMUTH',
                style: TextStyle(
                  fontSize: 50.0,
                  letterSpacing: 1.5,
                  color: Colors.white,
                  fontFamily: 'DirtyLarry',
                ),
              ),
              Text(
                'Mobile Developer',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.teal[100],
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w200,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
