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
        backgroundColor: Colors.amber,
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
                  fontSize: 20.0,
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 200.0,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 20.0,
                ),
                child: ListTile(
                  leading: Icon(Icons.phone, color: Colors.orange[700]),
                  title: Text(
                    '+1 650 387 8701',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.grey[900],
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 20.0,
                ),
                child: ListTile(
                  leading: Icon(Icons.email, color: Colors.orange[700]),
                  title: Text(
                    'bismuthalex@gmail.com',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.grey[900],
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                    ),
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
