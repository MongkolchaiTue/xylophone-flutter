import 'package:audiofileplayer/audiofileplayer.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber){
    Audio.load('assets/note${soundNumber}.wav')..play()..dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  playSound(1);
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.black,
                ),
                child: Text('Click1'),
              ),
              TextButton(
                onPressed: () {
                  playSound(2);
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.cyan,
                  foregroundColor: Colors.black,
                ),
                child: Text('Click2'),
              ),
              TextButton(
                onPressed: () {
                  playSound(3);
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.black,
                ),
                child: Text('Click3'),
              ),
              TextButton(
                onPressed: () {
                  playSound(4);
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.black,
                ),
                child: Text('Click4'),
              ),
              TextButton(
                onPressed: () {
                  playSound(5);
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.black,
                ),
                child: Text('Click5'),
              ),
              TextButton(
                onPressed: () {
                  playSound(6);
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.black,
                ),
                child: Text('Click6'),
              ),
              TextButton(
                onPressed: () {
                  playSound(7);
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.pink,
                  foregroundColor: Colors.black,
                ),
                child: Text('Click7'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
