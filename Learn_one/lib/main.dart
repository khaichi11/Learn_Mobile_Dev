import 'package:flutter/material.dart';

import 'gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          const Color.fromARGB(255, 216, 33, 245),
          const Color.fromARGB(255, 67, 48, 136),
        ),
      ),
    ),
  );
}
