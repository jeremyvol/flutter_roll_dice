import 'package:flutter/material.dart';
import 'package:roll_dice/dice_roller.dart';

const beginAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(
    this.color1,
    this.color2, {
    super.key,
    // required this.colors,
  });

  // alternative constructor function
  const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.cyan;

  // final List<Color> colors;
  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          // colors: colors,
          colors: [color1, color2],
          begin: beginAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
