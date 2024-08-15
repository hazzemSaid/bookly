import 'package:bookly_app/constrain.dart';
import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class Splash_Viewbody extends StatelessWidget {
  const Splash_Viewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        padding: const EdgeInsets.only(top: 30),
        width: 250,
        child: Image.asset(logo, fit: BoxFit.contain),
      ),
      const SizedBox(height: 40),
      Container(
        child: Column(
          children: [
            const Text(
              "There is no",
              style: TextStyle(color: Colors.grey, fontSize: 40),
            ),
            const Text(
              "friend as loyal",
              style: TextStyle(color: Colors.grey, fontSize: 25),
            ),
            const Text(
              "as Book",
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
          ],
        ),
      ),
      const SizedBox(height: 50),
      Container(
        padding: const EdgeInsets.only(top: 150),
        child: const SimpleCircularProgressBar(
          progressColors: [
            Colors.black12,
            Colors.black26,
            Color(0xFF3D3D3D),
            Colors.grey,
          ],
          size: 30,
          backStrokeWidth: 0,
          //There is no friend as loyal as a book.
          //-ERNEST HEMINGWAY
        ),
      ),
      const SizedBox(height: 20),
    ]);
  }
}
