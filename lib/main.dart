import 'package:audiofileplayer/audiofileplayer.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    Audio.load('assets/note${soundNumber}.wav')
      ..play()
      ..dispose();
  }

  List<Widget> buildKeypad() {
    List<Widget> listWidget = [];
    List<Color> listColor = [Colors.black, Colors.red, Colors.green, Colors.blue, Colors.grey, Colors.teal, Colors.orange, Colors.pink];
    List<String> listNote = ['0-Hmm','1-Do', '2-Re', '3-Me', '4-Fa', '5-Sal', '6-La', '7-Te', '8-Doo'];
    for(int x = 1; x <= 7; x++) {
      listWidget.add(
        Expanded(
          child: TextButton(
            onPressed: () {
              playSound(x);
            },
            style: TextButton.styleFrom(
              backgroundColor: listColor[x],
              foregroundColor: Colors.black,
            ),
            child: Center(
              child:Text(listNote[x]),
              widthFactor: 300.0,
            )
          ),
        ),
      );
    }
    return listWidget;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: buildKeypad()
          ),
        ),
      ),
    );
  }
}
