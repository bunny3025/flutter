import 'package:flutter/material.dart';
import 'package:learning_flutter/quiz.dart';
import 'package:learning_flutter/result.dart';
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
  final _questions = [
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
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    if (_questionIndex < _questions.length) {
      print('We have alot questions.');
    }
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    this._totalScore += score;

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Question Answer'),
            ),
            body: _questionIndex < _questions.length
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questions: _questions,
                    questionIndex: _questionIndex,
                  )
                : Result(_totalScore)));
  }
}
