import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(PersonalityQuestionApp());

class PersonalityQuestionApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PersonalityQuestionAppState();
  }
}

class _PersonalityQuestionAppState extends State<PersonalityQuestionApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    print(questions.elementAt(_questionIndex));
  }

  var questions = [
    {
      'questionText': 'tipi tipi top which color you want?',
      'answers': [1, 2, 3, 4]
    },
    {
      'questionText': 'seriously you wanted red color?',
      'answers': [1, 2, 3, 4, 5]
    },
    {
      'questionText': 'seriously you wanted yellow color?',
      'answers': [1, 2, 3, 4, 5, 6]
    },
    {
      'questionText': 'seriously you wanted green color?',
      'answers': [1, 2, 3, 4, 5],
    },
    {
      'questionText': 'seriously you wanted red color?',
      'answers': [
        1,
        2,
        3,
      ]
    },
    {
      'questionText': 'seriously you wanted blue color?',
      'answers': [
        1,
        2,
      ]
    },
    {
      'questionText': 'seriously you wanted pink color?',
      'answers': [1, 2, 3, 4]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Question Answer'),
            ),
            body: Column(
              children: [
                Question(questions[_questionIndex]['questionText']),
                ...(questions[_questionIndex]['answers'] as List<int>)
                    .map((answer) {
                  return Answer(_answerQuestion, answer.toString());
                }).toList()
              ],
            )));
  }
}
