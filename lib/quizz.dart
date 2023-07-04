import 'package:flutter/material.dart';
import 'package:quizz_app/data/questions.dart';
import 'package:quizz_app/landing_screen.dart';

class Quizz extends StatefulWidget {
  const Quizz({super.key});

  @override
  State<Quizz> createState() => _QuizzState();
}

class _QuizzState extends State<Quizz> {
  String activeScreen = 'start-screen';
  List<String> selectedAnswers = [];

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  void startQuizz() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void RestartQuizz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'start-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LandingPage(
          activeScreen: activeScreen,
          startQuizz: startQuizz,
          RestartQuizz: RestartQuizz,
          selectedAnswers: selectedAnswers,
          chooseAnswer: chooseAnswer),
    );
  }
}
