import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const DicePage(),
    );
  }
}

class DicePage extends StatelessWidget {
  const DicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('GFG | Dice'),
        backgroundColor: const Color.fromRGBO(15, 157, 88, 1),
        foregroundColor: Colors.white,
      ),
      body: const Dice(),
    );
  }
}

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int diceNo = 1;

  void update() {
    setState(() {
      diceNo = Random().nextInt(6) + 1;
      print("dice: $diceNo");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: GestureDetector(
          onTap: update,
          child: Image.asset('images/dice$diceNo.png'),
        ),
      ),
    );
  }
}
