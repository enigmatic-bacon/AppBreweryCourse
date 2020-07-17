import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[400],
        appBar: AppBar(
          centerTitle: true,
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue[900],
        ),
        body: EightBallPage(),
      ),
    ),
  );
}

class EightBallPage extends StatefulWidget {
  EightBallPage({Key key}) : super(key: key);

  @override
  _EightBallPageState createState() => _EightBallPageState();
}

class _EightBallPageState extends State<EightBallPage> {
  int eightBallValue = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton(
          onPressed: () {
            setState(() {
              eightBallValue = randomInt(1, 5);
            });
          },
          padding: const EdgeInsets.all(18.0),
          child: Image.asset('images/ball$eightBallValue.png'),
        ),
      ),
    );
  }
}

int randomInt(int min, int max) {
  return Random().nextInt(max) + min;
}
