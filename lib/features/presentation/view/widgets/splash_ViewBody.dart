import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

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

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:
          MainAxisAlignment.center, // Center the content vertically
      children: [
        Container(
          margin: const EdgeInsets.only(top: 300),
          width: 250,
          child: AnimatedBuilder(
            animation: _controller,
            builder: (context, _) {
              return SlideTransition(
                position: _animation,
                child:
                    Image.asset("assets/images/Logo.png", fit: BoxFit.contain),
              );
            },
          ),
        ),
        const SizedBox(height: 20),
        Container(
          margin: const EdgeInsets.only(top: 60),
          padding: const EdgeInsets.only(top: 60),
          child: const SimpleCircularProgressBar(
            progressColors: [
              Colors.black12,
              Colors.black26,
              Color(0xFF3D3D3D),
              Color.fromARGB(255, 101, 100, 100),
              Colors.grey,
            ],
            size: 30,
            backStrokeWidth: 0,
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
