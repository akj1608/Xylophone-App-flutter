import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatelessWidget {
  void playSound(int audioNumber) {
    final player = AudioCache();
    player.play('note$audioNumber.wav');
  }

  Expanded buildKey({Color color, int audioNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(audioNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, audioNumber: 1),
              buildKey(color: Colors.orange, audioNumber: 2),
              buildKey(color: Colors.yellow, audioNumber: 3),
              buildKey(color: Colors.green, audioNumber: 4),
              buildKey(color: Colors.teal, audioNumber: 5),
              buildKey(color: Colors.blue, audioNumber: 6),
              buildKey(color: Colors.purple, audioNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}