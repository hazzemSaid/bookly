import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class Splash_Viewbody extends StatelessWidget {
  const Splash_Viewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Expanded(
        flex: 9,
        child: Image.asset("assets/images/Logo.png"),
      ),
      Expanded(
        flex: 5,
        child: SimpleCircularProgressBar(
          progressColors: [
            Colors.black12,
            Colors.black26,
            Color(0xFF3D3D3D),
            Colors.grey,
          ],
          size: 30,
          backStrokeWidth: 0,
        ),
      ),
    ]);
  }
}
