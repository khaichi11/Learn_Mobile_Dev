import 'package:flutter/material.dart';
import 'package:learn_one/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.warna1, this.warna2, {super.key});
  final Color warna1, warna2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [warna1, warna2],
        ),
      ),
      child: const Center(child: DiceRoller()),
    );
  }
}
