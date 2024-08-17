import 'package:bookly_app/constrain.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 20, bottom: 0),
          child: Image.asset(
            logo,
            width: 100,
            height: 50,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(right: 10),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              size: 30,
              color: Colors.white,
              Icons.search,
            ),
          ),
        )
      ],
    );
  }
}
