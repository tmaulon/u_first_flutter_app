import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceValue = 1;

  void rollDice() {
    setState(() {
      currentDiceValue = randomizer.nextInt(6) + 1;
      debugPrint("changing image with dice value $currentDiceValue...");
    });
  }

  @override
  Widget build(context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceValue.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(top: 20),
            foregroundColor: const Color.fromRGBO(9, 120, 128, 1),
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text("Roll dice"),
        )
      ],
    );
  }
}
