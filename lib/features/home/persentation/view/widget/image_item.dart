import 'package:bookly_app/constrain.dart';
import 'package:flutter/material.dart';

class item_image extends StatelessWidget {
  const item_image({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQueryData().size.height * 0.3,
      child: AspectRatio(
        aspectRatio: 2.9 / 4,
        //w/h
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(testImage2),
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ),
    );
  }
}
