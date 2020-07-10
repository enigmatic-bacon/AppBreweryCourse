import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('I Am Rich'),
          backgroundColor: Color(0xFF5d576b),
          centerTitle: true,
        ),
        backgroundColor: Color(0xFFed6a5a),
        body: Center(
          child: Image(
            image: NetworkImage(
                'https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fi.ytimg.com%2Fvi%2F_5ZTdWfgoDA%2Fmaxresdefault.jpg&f=1&nofb=1'),
          ),
        ),
      ),
    ),
  );
}
