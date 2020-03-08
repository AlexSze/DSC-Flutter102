import 'package:flutter/material.dart';
import 'magicballscreen.dart';

class mainscreen extends StatelessWidget {
  TextEditingController _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Welcome to Magic Ball!',
                style: TextStyle(
                  fontFamily: 'Oxanium',
                  color: Colors.teal[900],
                  fontSize: 20.0,
                ),
              ),
              TextField(
                controller: _controller,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'What is your name?',
                  labelText: 'Name *',
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      color: Colors.blue,
                      child: Text(
                        'Magic Ball GO!',
                        style: TextStyle(
                          fontFamily: 'Oxanium',
                          color: Colors.teal[900],
                          fontSize: 20.0,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  new Ballpage(_controller.text)),
                        );
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
