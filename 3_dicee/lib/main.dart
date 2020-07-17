import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDieValue = 1;
  int rightDieValue = 1;

  void changeDieFace(bool right) {
    setState(() {
      if (right)
        rightDieValue = randomInt(1, 6);
      else
        leftDieValue = randomInt(1, 6);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  changeDieFace(false);
                },
                padding: const EdgeInsets.all(10.0),
                child: Image.asset('images/dice$leftDieValue.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  changeDieFace(true);
                },
                padding: const EdgeInsets.all(10.0),
                child: Image.asset('images/dice$rightDieValue.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

int randomInt(int min, int max) {
  return Random().nextInt(max) + min;
}
