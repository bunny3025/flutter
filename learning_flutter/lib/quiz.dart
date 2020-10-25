import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text(
            'THE FOUNDATION OF LEADERSHIP: CHARACTER',
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
        ),
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(() => answerQuestion(answer), answer);
        }).toList()
      ],
    );
  }
}
