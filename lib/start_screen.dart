import 'package:flutter/material.dart';
import 'package:quizz_app/styled_text.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuizz, {super.key});

  final void Function() startQuizz;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          height: 300,
          color: const Color.fromARGB(150, 255, 255, 255),
        ),
        const SizedBox(
          height: 60,
        ),
        const StyledText(
          text: 'Learn flutter the fun way',
        ),
        const SizedBox(
          height: 20,
        ),
        OutlinedButton.icon(
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          icon: const Icon(Icons.arrow_right_alt),
          onPressed: startQuizz,
          label: const StyledText(
            text: 'Start quizz',
            fontSize: 10,
          ),
        )
      ],
    );
  }
}
