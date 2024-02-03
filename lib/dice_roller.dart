import 'package:flutter/material.dart';
import 'dart:math';

var randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({Key? key}) : super(key: key);

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage1 = 1;
  var activeDiceImage2 = 1;

  void rollDice() {
    setState(() {
      activeDiceImage1 = randomizer.nextInt(6) + 1;
      activeDiceImage2 = randomizer.nextInt(6) + 1;

      // Check for the winner or draw
      checkWinner();
    });
  }

  void reset() {
    setState(() {
      activeDiceImage1 = 1;
      activeDiceImage2 = 1;
    });
  }

  void checkWinner() {
    String result;
    if (activeDiceImage1 > activeDiceImage2) {
      result = 'Player 1 Wins!';
    } else if (activeDiceImage2 > activeDiceImage1) {
      result = 'Player 2 Wins!';
    } else {
      result = 'It\'s a Draw!';
    }

    // Show result using SnackBar
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(result),
        duration: const Duration(seconds: 3), // Adjust the duration as needed
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Player 1',
              style: TextStyle(fontSize: 40, color: Colors.white),
            ),
            Text(
              'Player 2',
              style: TextStyle(fontSize: 40, color: Colors.white),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/images/dice-$activeDiceImage1.png', width: 130),
            Image.asset('assets/images/dice-$activeDiceImage2.png', width: 130),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(fontSize: 18),
          ),
          child: const Text('Roll Dice'),
        ),
        ElevatedButton(
          onPressed: reset,
          style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(fontSize: 18),
          ),
          child: const Text('Reset Dice'),
        ),
        ],
        ),
      ],
    );
  }
}