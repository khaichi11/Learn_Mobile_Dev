import 'package:flutter/material.dart';

import 'text_app.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 216, 33, 245),
            Color.fromARGB(255, 67, 48, 136),
          ],
        ),
      ),
      child: const Center(child: TextApp()),
    );
  }
}
