import 'package:flutter/material.dart';

import 'inputborder.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        decoration: InputDecoration(
          focusedBorder: Inputborder.inputBorder(),
          enabledBorder: Inputborder.inputBorder(),
          hintText: 'Search',
          suffixIcon: const Opacity(
            opacity: .6,
            child: const Icon(Icons.search),
          ),
        ),
      ),
    );
  }
}
