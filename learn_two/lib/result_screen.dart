import 'package:flutter/material.dart';
import 'package:learn_two/data/questions.dart';
import 'package:learn_two/question_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswers});
  final List<String> chosenAnswers;
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answer[0],
        'user_answer': chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Kamu berhasil menjawab x dari y pertanyaan secara benar!'),
            SizedBox(height: 30),
            QuestionSummary(getSummaryData()),
            SizedBox(height: 30),
            TextButton(onPressed: () {}, child: Text('Restart Quiz!')),
          ],
        ),
      ),
    );
  }
}
