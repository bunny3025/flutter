import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuizHandler;

  Result(this.totalScore, this.resetQuizHandler);

  String get resultText {
    print(this.totalScore);
    var finalText;
    if (totalScore < 6) {
      finalText = 'So bad';
    } else if (totalScore > 6 && totalScore < 10) {
      finalText = 'considrable';
    } else {
      finalText = 'So good your are';
    }
    return finalText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Text(
        resultText,
        style: TextStyle(fontSize: 20),
      ),
      FlatButton(
        child: Text(
          'Reset Quiz...',
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        onPressed: resetQuizHandler,
        textColor: Colors.red,
      )
    ]));
  }
}
