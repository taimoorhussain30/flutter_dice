import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int diceNumber1 = 1;
  int diceNumber2 = 1;
  void changeDiceFace() {
    setState(() {
      diceNumber1 = Random().nextInt(6) + 1;
      diceNumber2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(
                onPressed: () {
                  changeDiceFace();
                },
                child: Image.asset('images/dice$diceNumber1.png')),
          ),
        ),
        Expanded(
          child: TextButton(
              onPressed: () {
                changeDiceFace();
              },
              child: Image.asset('images/dice$diceNumber2.png')),
        ),
      ],
    );
  }
}
