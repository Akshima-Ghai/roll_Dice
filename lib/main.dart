import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: Text('Dice'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void changeDiceFace(){
    setState(() {
      leftDiceNumber = Random().nextInt(6);
      rightDiceNumber = Random().nextInt(6);
    });
  }
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: (){
                changeDiceFace();

              },
              child: Image.asset('images/dice${leftDiceNumber+1}.png'),
            ),
          ),
          Expanded(child: FlatButton(
              onPressed: (){
                changeDiceFace();
              },
              child: Image.asset('images/dice${rightDiceNumber+1}.png')
          ),
          )
        ],
      ),
    );
  }
  }







