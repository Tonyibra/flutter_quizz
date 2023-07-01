import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;

  const StyledText(
      {required this.text,
      this.fontSize = 22,
      this.color = Colors.white,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: fontSize),
    );
  }
}
