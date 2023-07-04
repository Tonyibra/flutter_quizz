import 'package:flutter/material.dart';
import 'package:quizz_app/gardient_container.dart';
import 'package:quizz_app/questions_screen.dart';
import 'package:quizz_app/result_screen.dart';
import 'package:quizz_app/start_screen.dart';

class LandingPage extends StatelessWidget {
  final String activeScreen;
  final VoidCallback startQuizz;
  final VoidCallback RestartQuizz;
  final List<String> selectedAnswers;
  final void Function(String answer) chooseAnswer;
  const LandingPage(
      {required this.selectedAnswers,
      required this.RestartQuizz,
      required this.chooseAnswer,
      required this.startQuizz,
      required this.activeScreen,
      super.key});

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(startQuizz);

    if (activeScreen == 'questions-screen') {
      screenWidget = QestionsScreen(chooseAnswer: chooseAnswer);
    } else if (activeScreen == 'results-screen') {
      screenWidget = ResultScreen(
        RestartQuizz: RestartQuizz,
        choosenAnswers: selectedAnswers,
      );
    }

    return Scaffold(
      body: GradientContainer(
        color1: const Color.fromARGB(255, 197, 97, 214),
        color2: const Color.fromARGB(255, 75, 22, 84),
        child: Center(
          child: screenWidget,
        ),
      ),
    );
  }
}
