import 'package:bookly_app/features/home/persentation/view_model/homemodel.dart';
import 'package:bookly_app/features/splash/presentation/view/animation/textsliding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Splash_Viewbody extends StatefulWidget {
  const Splash_Viewbody({super.key});

  @override
  State<Splash_Viewbody> createState() => _Splash_ViewbodyState();
}

class _Splash_ViewbodyState extends State<Splash_Viewbody>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    animationSlidingtext();
    Future.delayed(const Duration(seconds: 4), () {
      Get.to(
        () => Homepage(),
        transition: Transition.circularReveal,
        duration: const Duration(milliseconds: 400),
      );
    });
  }

  void animationSlidingtext() {
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this, // `this` is the TickerProvider
    );
    _animation = Tween<Offset>(
      begin: const Offset(0, -3),
      end: const Offset(0, -1),
    ).animate(_controller);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose of the controller to free resources
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:
          MainAxisAlignment.center, // Center the content vertically
      children: [
        Container(
          margin: const EdgeInsets.only(top: 300),
          width: 250,
          child: animation_testsliding(
              controller: _controller, animation: _animation),
        ),
        const SizedBox(height: 20),
        Container(
          margin: const EdgeInsets.only(top: 60),
          padding: const EdgeInsets.only(top: 60),
          child: LoadingAnimationWidget.hexagonDots(
            color: Colors.white,
            size: 40,
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
