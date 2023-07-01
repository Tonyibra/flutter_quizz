import 'package:flutter/material.dart';
import 'package:quizz_app/styled_text.dart';

class QestionsScreen extends StatefulWidget {
  const QestionsScreen({super.key});

  @override
  State<QestionsScreen> createState() => _QestionsScreenState();
}

class _QestionsScreenState extends State<QestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return const StyledText(
      text: 'question',
    );
  }
}
