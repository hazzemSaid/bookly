import 'package:bookly_app/features/presentation/view/widgets/splash_ViewBody.dart';
import 'package:flutter/material.dart';

class splash_Screen extends StatelessWidget {
  const splash_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      child: Splash_Viewbody(),
    ));
  }
}
