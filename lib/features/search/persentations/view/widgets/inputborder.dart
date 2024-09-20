import 'package:flutter/material.dart';

abstract class Inputborder {
  static InputBorder inputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Colors.white),
    );
  }
}
