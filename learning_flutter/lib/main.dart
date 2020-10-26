import 'package:flutter/material.dart';
import './questionBank.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(PersonalityQuestionApp());

class PersonalityQuestionApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PersonalityQuestionAppState();
  }
}

class _PersonalityQuestionAppState extends State<PersonalityQuestionApp> {
  final _questions = QuestionBank.characterAssessment1;
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(String response) {
    if (_questionIndex < _questions.length) {
      print('We have alot questions.');
    }
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (response == 'Yes') {
      this._totalScore += 1;
    }

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Character Assessment'),
            ),
            body: _questionIndex < _questions.length
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questions: _questions,
                    questionIndex: _questionIndex,
                  )
                : Result(_totalScore, _resetQuiz)));
  }

  _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }
}
