// ignore_for_file: library_private_types_in_public_api, unused_element
import 'package:groccery_app/screens/intro.dart';

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter/scheduler.dart';
import 'package:groccery_app/screens/login.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    // Create an animation controller with a duration (e.g., 2 seconds)
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    );

    // Create a Tween that defines how your animation should behave

    // Start the animation
    _controller.forward();

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        // Navigate to the next screen
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
          return IntroPage();
        }));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.white10, Colors.lightGreen],
            ),
          ),
          child: Center(
            child: Lottie.network(
                'https://lottie.host/175f464b-326d-4e7e-ad26-22d5b74c6b65/NoCWWCLjHu.json'),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    @override
    void dispose() {
      _controller
          .dispose(); // Dispose the animation controller when no longer needed
      super.dispose();
    }
  }
}
