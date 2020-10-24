import 'package:flutter/material.dart';

void main() => runApp(PersonalityQuestionApp());

class PersonalityQuestionApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PersonalityQuestionAppState();
  }
}

class PersonalityQuestionAppState extends State<PersonalityQuestionApp> {
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex = questionIndex + 1;
    print(questionIndex);
    print(questions.elementAt(questionIndex));
  }

  var questions = [
    'tipi tipi top which color you want?',
    'seriously you wanted red color?',
    'seriously you wanted blue color?',
    'seriously you wanted red color?',
    'seriously you wanted green color?',
    'seriously you wanted yellow color?',
    'seriously you wanted pink color?',
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
                Text(questions.elementAt(0)),
                RaisedButton(
                  child: Text('Answer 1'),
                  onPressed: answerQuestion,
                ),
                RaisedButton(
                  child: Text('Answer 2'),
                  onPressed: answerQuestion,
                ),
                RaisedButton(
                  child: Text('Answer 3'),
                  onPressed: () {
                    print('answer 3 choosen');
                  },
                ),
              ],
            )));
  }
}
