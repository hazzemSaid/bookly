import 'package:bookly_app/features/presentation/view/widgets/splash_Screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Bookly',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const splash_Screen(),
    );
  }
}
