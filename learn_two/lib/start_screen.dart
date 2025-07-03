import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.warna1, this.warna2, {super.key});
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
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage('assets/brain_logo_app_khai_2.png'),
                  fit: BoxFit.cover,
                ),
              ),
              width: 300,
              height: 300,
            ),
            SizedBox(height: 20),
            OutlinedButton(onPressed: () {}, child: Text('Start Quiz')),
          ],
        ),
      ),
    );
  }
}
