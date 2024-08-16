import 'package:bookly_app/constrain.dart';
import 'package:flutter/material.dart';

class Carditem extends StatelessWidget {
  const Carditem({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, indx) {
            return Container(
              height: 150,
              color: backGround,
              margin: const EdgeInsets.only(left: 5),
              child: Image.asset(
                testImage,
              ),
            );
          },
        ),
      ),
    );
  }
}
