import 'package:flutter/material.dart';

import 'start_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: StartScreen(
          Color.fromARGB(255, 232, 155, 246),
          Color.fromARGB(255, 192, 179, 231),
        ),
      ),
    ),
  );
}
