import 'package:flutter/material.dart';
import 'package:quizz_app/landing_screen.dart';
import 'package:quizz_app/questions_screen.dart';
import 'package:quizz_app/start_screen.dart';

class Quizz extends StatefulWidget {
  const Quizz({super.key});

  @override
  State<Quizz> createState() => _QuizzState();
}

class _QuizzState extends State<Quizz> {
  Widget activeScreen = const StartScreen(switchScreen: () => switchScreen());

  void switchScreen() {
    setState(() {
      activeScreen = const QestionsScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LandingPage(activeScreen: activeScreen),
    );
  }
}
