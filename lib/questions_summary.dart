import 'package:flutter/material.dart';
import 'package:quizz_app/styled_text.dart';

class Summary extends StatelessWidget {
  final List<Map<String, Object>> summaryData;
  const Summary({required this.summaryData, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SingleChildScrollView(
        child: Column(
            children: summaryData.map(
          (data) {
            final bool isCorrect =
                data['user-answer'] == data['correct-answer'];

            return Row(children: [
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: isCorrect
                        ? const Color.fromARGB(255, 127, 183, 228)
                        : const Color.fromARGB(203, 241, 107, 97),
                    borderRadius: BorderRadius.circular(100)),
                height: 30,
                width: 30,
                margin: const EdgeInsets.only(right: 20, bottom: 20),
                child: Text(
                  ((data['question-index'] as int) + 1).toString(),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      StyledText(
                        text: (data['question'] as String),
                        fontSize: 15,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      StyledText(
                        text: (data['user-answer'] as String),
                        color: const Color.fromARGB(203, 241, 107, 97),
                        fontSize: 12,
                      ),
                      StyledText(
                        text: (data['correct-answer'] as String),
                        fontSize: 12,
                        color: const Color.fromARGB(255, 127, 183, 228),
                      ),
                    ],
                  ),
                ),
              )
            ]);
          },
        ).toList()),
      ),
    );
  }
}
