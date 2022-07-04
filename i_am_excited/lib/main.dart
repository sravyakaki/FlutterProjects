import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        backgroundColor: Colors.lightGreen,
        body: Center(
          child: Image(
            image: AssetImage('images/1024.png'),
          ),
        ),
        appBar: AppBar(
          title: Text('I am excited'),
          backgroundColor: Colors.pink,
        )),
  ));
}
