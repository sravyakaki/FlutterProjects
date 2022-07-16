import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded playerSettings({int soundID, Color color}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundID);
        },
        // child: Text('Click me'),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              playerSettings(soundID: 1, color: Colors.red),
              playerSettings(soundID: 2, color: Colors.orange),
              playerSettings(soundID: 3, color: Colors.green),
              playerSettings(soundID: 4, color: Colors.teal),
              playerSettings(soundID: 5, color: Colors.blue),
              playerSettings(soundID: 6, color: Colors.blue[900]),
              playerSettings(soundID: 7, color: Colors.purple)
            ],
          ),
        ),
      ),
    );
  }
}
