import 'package:flutter/material.dart';

class animation_testsliding extends StatelessWidget {
  const animation_testsliding({
    super.key,
    required AnimationController controller,
    required Animation<Offset> animation,
  })  : _controller = controller,
        _animation = animation;

  final AnimationController _controller;
  final Animation<Offset> _animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, _) {
        return SlideTransition(
          position: _animation,
          child: Image.asset("assets/images/Logo.png", fit: BoxFit.contain),
        );
      },
    );
  }
}
