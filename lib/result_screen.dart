import 'package:flutter/material.dart';
import 'package:quizz_app/data/questions.dart';
import 'package:quizz_app/questions_summary.dart';
import 'package:quizz_app/styled_text.dart';

class ResultScreen extends StatelessWidget {
  final VoidCallback RestartQuizz;
  final List<String> choosenAnswers;
  const ResultScreen(
      {required this.choosenAnswers, required this.RestartQuizz, super.key});

  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> sumary = [];

    for (var i = 0; i < choosenAnswers.length; i++) {
      sumary.add(
        {
          'question-index': i,
          'question': questions[i].text,
          'correct-answer': questions[i].answers[0],
          'user-answer': choosenAnswers[i]
        },
      );
    }

    return sumary;
  }

  @override
  Widget build(BuildContext context) {
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData
        .where((element) => element['correct-answer'] == element['user-answer'])
        .length;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          StyledText(
              align: TextAlign.center,
              text:
                  'You answers $numCorrectQuestions out of $numTotalQuestions question'),
          const SizedBox(
            height: 30,
          ),
          Summary(
            summaryData: summaryData,
          ),
          TextButton(
            onPressed: RestartQuizz,
            child: const StyledText(
              text: 'Restart Quizz',
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}
