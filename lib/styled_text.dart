import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledText extends StatelessWidget {
  final String text;
  final Color color;
  final TextAlign align;
  final double fontSize;

  const StyledText(
      {this.align = TextAlign.start,
      required this.text,
      this.fontSize = 22,
      this.color = Colors.white,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: align,
        style: GoogleFonts.raleway(
          color: color,
          fontSize: fontSize,
        ));
  }
}
