import 'package:flutter/material.dart';
import 'package:quizz_app/gardient_container.dart';

class LandingPage extends StatelessWidget {
  final Widget activeScreen;

  const LandingPage({required this.activeScreen, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientContainer(
        color1: const Color.fromARGB(255, 197, 97, 214),
        color2: const Color.fromARGB(255, 75, 22, 84),
        child: Center(
          child: activeScreen,
        ),
      ),
    );
  }
}
