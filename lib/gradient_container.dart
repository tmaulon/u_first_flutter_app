import 'package:first_flutter_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAligment = Alignment.topLeft;
const endAligment = Alignment.bottomRight;
const defaultLinearGradientColors = [
  Color.fromRGBO(221, 241, 250, 1),
  Color.fromRGBO(189, 240, 255, 1)
];

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});

  // An another constructor function
  const GradientContainer.defaultLinearGradient({super.key})
      : colors = defaultLinearGradientColors;

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAligment,
          end: endAligment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
