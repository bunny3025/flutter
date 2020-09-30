import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:startup_namer/layouts/RandomWords.dart';

class MyAppStarter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Its random words apps',
      home: RandomWords()
    );
  }
}