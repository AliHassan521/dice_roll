import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

var startAlignment = Alignment.topLeft;
var endAlignmnet = Alignment.bottomRight;

class GradientContainter extends StatelessWidget {
  const GradientContainter(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignmnet,
          colors: [color1, color2],
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}

// class GradientContainter extends StatelessWidget {
//   const GradientContainter(this.colors,{super.key});

//   final List<Color> colors;

//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           begin: startAlignment,
//           end: endAlignmnet,
//           colors: colors,
//         ),
//       ),
//       child: const Center(
//         child: StyleText('Ali Hassan!'),
//       ),
//     );
//   }
// }
