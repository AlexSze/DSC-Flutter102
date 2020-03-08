import 'package:flutter/material.dart';
import 'dart:math';

class Ballpage extends StatelessWidget {
  final String name;
  Ballpage(this.name);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Text('$name' + ' ,Ask Me Anything'),
            ],
          ),
          backgroundColor: Colors.grey,
        ),
        body: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballnum = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButton(
            onPressed: () {
              setState(() {
                ballnum = Random().nextInt(5) + 1;
              });
            },
            child: Image.asset('images/ball$ballnum.png'),
          ),
        ],
      ),
    );
  }
}
