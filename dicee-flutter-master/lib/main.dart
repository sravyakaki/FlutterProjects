import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
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
  int leftButtonValue = 1;
  int rightButtonValue = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
                onPressed: () {
                  buttonPressed();
                },
                child: Image.asset('images/dice$leftButtonValue.png')),
          ),
          Expanded(
            child: TextButton(
                onPressed: () {
                  buttonPressed();
                },
                child: Image.asset('images/dice$rightButtonValue.png')),
          )
        ],
      ),
    );
  }

  void buttonPressed() {
    setState(() {
      rightButtonValue = Random().nextInt(6) + 1;
      leftButtonValue = Random().nextInt(6) + 1;
    });
  }
}
