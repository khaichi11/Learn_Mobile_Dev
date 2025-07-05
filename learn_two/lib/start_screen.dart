import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 300,
            height: 300,
            child: Image.asset('assets/brain_logo_app_khai_2.png'),
          ),
          SizedBox(height: 20),
          Text(
            "Belajar Flutter dengan cara yang menyenangkan",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 20,
            ),
          ),
          SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 184, 123, 215),
              foregroundColor: Color.fromARGB(255, 255, 255, 255),
              side: BorderSide(color: Color.fromARGB(255, 184, 123, 215)),
            ),
            icon: Icon(Icons.quiz_outlined),
            label: Text('Mulai Quiz'),
          ),
        ],
      ),
    );
  }
}
