import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: Colors.red,
    appBar: AppBar(
      title: Text('Dicee'),
      backgroundColor: Colors.red,
    ),
    body: DicePage(),
  )));
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  // const DicePage({super.key});

  int leftDice = 1;
  int rightDice = 1;

  void rollDice() {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Total: ${leftDice + rightDice}",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextButton(
                    onPressed: () {
                      rollDice();
                    },
                    child: Image.asset('images/dice$leftDice.png')),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextButton(
                    onPressed: () {
                      rollDice();
                    },
                    child: Image.asset('images/dice$rightDice.png')),
              ),
            )
          ],
        ),
      ],
    ));
  }
}
