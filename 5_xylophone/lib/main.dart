import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  padding: EdgeInsets.all(0.0),
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note1.wav');
                    print('clicked');
                  },
                  child: Container(
                    color: Colors.red,
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  padding: EdgeInsets.all(0.0),
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note2.wav');
                    print('clicked');
                  },
                  child: Container(
                    color: Colors.orange,
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  padding: EdgeInsets.all(0.0),
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note3.wav');
                    print('clicked');
                  },
                  child: Container(
                    color: Colors.yellow,
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  padding: EdgeInsets.all(0.0),
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note4.wav');
                    print('clicked');
                  },
                  child: Container(
                    color: Colors.green,
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  padding: EdgeInsets.all(0.0),
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note5.wav');
                    print('clicked');
                  },
                  child: Container(
                    color: Colors.blue,
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  padding: EdgeInsets.all(0.0),
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note6.wav');
                    print('clicked');
                  },
                  child: Container(
                    color: Colors.pink,
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  padding: EdgeInsets.all(0.0),
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note7.wav');
                    print('clicked');
                  },
                  child: Container(
                    color: Colors.purple,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
