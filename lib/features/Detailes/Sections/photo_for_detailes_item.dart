import 'package:flutter/material.dart';

class photoforidetailestem extends StatelessWidget {
  const photoforidetailestem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fitHeight,
          image: AssetImage('assets/images/test_image.png'),
        ),
      ),
    );
  }
}
