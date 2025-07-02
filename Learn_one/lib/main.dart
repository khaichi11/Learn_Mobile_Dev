import 'package:flutter/material.dart';

import 'gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 216, 33, 245),
          Color.fromARGB(255, 67, 48, 136),
        ),
      ),
    ),
  );
}
