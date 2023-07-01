import 'package:flutter/material.dart';

import 'package:quizz_app/quizz.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const Quizz();
  }
}
