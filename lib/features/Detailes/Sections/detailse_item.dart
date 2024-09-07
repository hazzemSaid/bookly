import 'package:bookly_app/features/Detailes/Sections/custom_bottom.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class detailseItem extends StatelessWidget {
  const detailseItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'The Jungle Book',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          width: double.infinity,
          height: 10,
        ),
        const Text(
          'Rudyard Kipling',
          style: TextStyle(
            color: Colors.white24,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              FontAwesomeIcons.star,
              color: Colors.yellow,
              size: 15,
            ),
            SizedBox(
              width: 5,
            ),
            Text("4.8"),
            SizedBox(
              width: 5,
            ),
            Text("2021"),
            SizedBox(
              width: 15,
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        customBottom(),
      ],
    );
  }
}
