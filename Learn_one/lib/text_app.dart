import 'package:flutter/material.dart';

class TextApp extends StatelessWidget {
  const TextApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Text(
      'Hello World!',
      style: TextStyle(color: Colors.white, fontSize: 28.0),
    );
  }
}
