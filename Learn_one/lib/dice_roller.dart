import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var gambarDaduAktif = 'assets/images/2.png';
  void acakDadu() {
    setState(() {
      gambarDaduAktif = 'assets/images/5.png';
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
              image: AssetImage(gambarDaduAktif),
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
