import 'package:flutter/material.dart';
import 'package:quizz_app/styled_text.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.onPress, this.text, {super.key});
  final String text;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 83, 76, 117),
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: StyledText(
        text: text,
        fontSize: 15,
        align: TextAlign.center,
      ),
    );
  }
}
