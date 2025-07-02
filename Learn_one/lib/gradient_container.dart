import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  GradientContainer(this.warna1, this.warna2, {super.key});
  final Color warna1, warna2;
  var gambarDaduAktif = 'assets/images/2.png';
  void acakDadu() {
    gambarDaduAktif = 'assets/images/5.png';
    print('berubah');
  }

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
        ),
      ),
    );
  }
}
