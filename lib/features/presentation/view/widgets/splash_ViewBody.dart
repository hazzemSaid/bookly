import 'package:bookly_app/features/presentation/view/widgets/animation/textsliding.dart';
import 'package:flutter/material.dart';
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

  bool locle = false;
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
