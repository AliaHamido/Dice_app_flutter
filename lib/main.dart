import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body: Dicepage(),
      ),
    ),
  );
}
class Dicepage extends StatefulWidget {
  const Dicepage({Key? key}) : super(key: key);


  @override
  State<Dicepage> createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) +1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }
  get child => null;

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                  onPressed: () { changeDiceFace();


                  }, child: Image.asset('images/dice$leftDiceNumber.png')),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                  onPressed: () {
    changeDiceFace();
                    },
                   child: Image.asset('images/dice$rightDiceNumber.png')),
            ),
          ),
        ],
      ),
    );
  }
}



