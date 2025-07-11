import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(148, 67, 48, 136),
          ),
          child: Column(
            children:
                summaryData.map((data) {
                  final isCorrect =
                      data['user_answer'] == data['correct_answer'];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color:
                                  isCorrect
                                      ? Color.fromARGB(216, 180, 253, 155)
                                      : Color.fromARGB(213, 255, 123, 161),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text(
                              ((data['question_index'] as int) + 1).toString(),
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  data['question'] as String,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Jawaban Kamu : ${data['user_answer'] as String}',
                                  style: TextStyle(
                                    color:
                                        isCorrect
                                            ? Color.fromARGB(245, 151, 248, 106)
                                            : Color.fromARGB(
                                              255,
                                              255,
                                              151,
                                              151,
                                            ),
                                  ),
                                ),
                                Text(
                                  'Jawaban yang sebenarnya : ${data['correct_answer'] as String}',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
          ),
        ),
      ),
    );
  }
}
