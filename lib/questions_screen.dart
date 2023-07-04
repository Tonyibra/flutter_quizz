import 'package:flutter/material.dart';
import 'package:quizz_app/answer_button.dart';
import 'package:quizz_app/data/questions.dart';
import 'package:quizz_app/styled_text.dart';

class QestionsScreen extends StatefulWidget {
  void Function(String answer) chooseAnswer;

  QestionsScreen({required this.chooseAnswer, super.key});

  @override
  State<QestionsScreen> createState() => _QestionsScreenState();
}

class _QestionsScreenState extends State<QestionsScreen> {
  var currentIndex = 0;

  void answerQuestion(String answer) {
    widget.chooseAnswer(answer);
    setState(() {
      currentIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentIndex];
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            StyledText(
              fontSize: 15,
              text: currentQuestion.text,
              align: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.shuffedAnswers.map((item) {
              return AnswerButton(() {
                answerQuestion(item);
              }, item);
            })
          ],
        ),
      ),
    );
  }
}
