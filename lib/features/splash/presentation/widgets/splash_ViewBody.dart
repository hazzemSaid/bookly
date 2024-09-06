import 'package:bookly_app/features/home/persentation/view_model/homemodel.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    print("object");
    initAnimationSlidingText();

    // Using Navigator to go to the next screen after a delay
    //using getx
    Future.delayed(const Duration(seconds: 3), () {
      // After 3 seconds, navigate to the HomeScreen
    });

    _controller.forward();
  }

  void initAnimationSlidingText() {
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this, // `this` is the TickerProvider
    );
    _animation = Tween<Offset>(
      begin: const Offset(0, -3),
      end: const Offset(0, -1),
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose of the controller to free resources
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Splash Screen"),
    );
  }
}
