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
  var gambarDaduAktif = 2;
  void acakDadu() {
    setState(() {
      gambarDaduAktif = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage('assets/images/$gambarDaduAktif.png'),
              fit: BoxFit.cover,
            ),
          ),
          width: 300,
          height: 300,
        ),
        TextButton(
          onPressed: acakDadu,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 40),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text('Acak Dadu'),
        ),
      ],
    );
  }
}
