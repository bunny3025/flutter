import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuizHandler;

  Result(this.totalScore, this.resetQuizHandler);

  String get resultText {
    print(this.totalScore);
    var finalText = 'Your score is ${totalScore}, and it is ';
    if (totalScore < 6) {
      finalText += 'So bad dear';
    } else if (totalScore > 6 && totalScore < 10) {
      finalText += 'considrable';
    } else {
      finalText += 'good, really happy to see that';
    }
    return finalText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Container(
        child: Text(
          resultText,
          style: TextStyle(fontSize: 30),
          textAlign: TextAlign.center,
        ),
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
      ),
      FlatButton(
        child: Text(
          'Re-Take Quiz...',
          style: TextStyle(fontStyle: FontStyle.italic),
          textAlign: TextAlign.center,
        ),
        onPressed: resetQuizHandler,
        textColor: Colors.red,
      )
    ]));
  }
}
