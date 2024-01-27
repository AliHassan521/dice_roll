import 'package:flutter/material.dart';
import 'dart:math';

var randomizer = Random();
class DiceRoller extends StatefulWidget{

  const DiceRoller ({super.key});

  @override
  State <DiceRoller> createState(){
    return _DiceRollerState();
  }
}


class _DiceRollerState extends State<DiceRoller>{
  var activeDiceImage = 1;
  
  void roleDice() {
   
    setState(() {
      activeDiceImage = randomizer.nextInt(6) + 1;;
    });
  }
  @override
  Widget build(context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/dice-$activeDiceImage.png', width: 200),
            const SizedBox(height: 20),
            TextButton(
              onPressed: roleDice,
              style: TextButton.styleFrom(
                //padding: const EdgeInsets.only(top: 20),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28),
              ),
              child: const Text('Roll Dice'),
            )
          ],
        );
  }
}