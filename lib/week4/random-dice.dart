import 'dart:math';

import 'package:flutter/material.dart';

const String diceImage2 = 'assets/dice-2/dice-2.png';
const String diceImage4 = 'assets/dice-2/dice-4.png';
const String diceImage1 = 'assets/dice-2/dice-1.png';
const String diceImage3 = 'assets/dice-2/dice-3.png';
const String diceImage5 = 'assets/dice-2/dice-5.png';
const String diceImage6 = 'assets/dice-2/dice-6.png';

String activeDiceImage = diceImage1;

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  void rollDice() {
    //  Display the dice 4 !
    setState(() {
      int randomNum = 0;
      randomNum = Random().nextInt(6);
      switch (randomNum) {
        case 0:
          activeDiceImage = diceImage1;
          break;
        case 1:
          activeDiceImage = diceImage2;
          break;
        case 2:
          activeDiceImage = diceImage3;
          break;
        case 3:
          activeDiceImage = diceImage4;
          break;
        case 4:
          activeDiceImage = diceImage5;
          break;
        case 5:
          activeDiceImage = diceImage6;
          break;
      }
      //activeDiceImage = 
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}

void main() => runApp(const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Center(child: DiceRoller()),
      ),
    ));
