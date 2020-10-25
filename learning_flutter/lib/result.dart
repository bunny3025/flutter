import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;

  Result(this.totalScore);

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
      child: Text(resultText),
    );
  }
}
