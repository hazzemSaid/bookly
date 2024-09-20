import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class customDetailesAppbar extends StatelessWidget {
  const customDetailesAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            FontAwesomeIcons.x,
            size: 19,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            // ignore: deprecated_member_use
            FontAwesomeIcons.shoppingCart,
            size: 19,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
