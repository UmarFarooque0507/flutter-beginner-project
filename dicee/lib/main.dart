import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text("Dicee"),
          backgroundColor: Colors.red,
          elevation: 0,
        ),
        body: DiceePage(),
      ),
    ),
  );
}

class DiceePage extends StatefulWidget {
  DiceePage({Key? key}) : super(key: key);

  @override
  State<DiceePage> createState() => _DiceePageState();
}

class _DiceePageState extends State<DiceePage> {
  int leftdice = 1;
  int rightdice = 1;

  void trolling() {
    setState(() {
      leftdice = Random().nextInt(6) + 1;
      rightdice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                trolling();
              },
              child: Image.asset("images/dice$leftdice.png"),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                trolling();
              },
              child: Image.asset("images/dice$rightdice.png"),
            ),
          ),
        ],
      ),
    );
  }
}
