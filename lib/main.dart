import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(Magic8ball());
}

class Magic8ball extends StatefulWidget {
  // const Magic8ball({Key key}) : super(key: key);

  @override
  State<Magic8ball> createState() => _Magic8ballState();
}

class _Magic8ballState extends State<Magic8ball> {
  int num = 1;
  void makeUpdatations() {
    setState(() {
      num = Random().nextInt(5) + 1;
      print('Button pressed and val is $num');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan.shade600,
        appBar: AppBar(
          backgroundColor: Colors.cyan.shade800,
          title: Text('Ask me anything'),
        ),
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.cyan.shade600,
                ),
                onPressed: () {
                  makeUpdatations();
                },
                child: Image(
                  image: AssetImage('images/ball$num.png'),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
