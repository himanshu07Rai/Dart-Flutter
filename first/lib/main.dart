import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _totalScore = 0;
  static const _questions = [
    {
      "question": "What's your fav color ? ",
      "options": [
        {"text": "Red", "score": 30},
        {"text": "Blue", "score": 20},
        {"text": "Black", "score": 50},
        {"text": "Yellow", "score": 30}
      ]
    },
    {
      "question": "What's your fav animal ? ",
      "options": [
        {"text": "Lion", "score": 30},
        {"text": "Zebra", "score": 20},
        {"text": "Cat", "score": 50},
        {"text": "Dog", "score": 30}
      ]
    }
  ];
  var _questionIdex = 0;
  void _ansQuestion(int score) {
    _totalScore += score;
    print("Answered");
    setState(() {
      _questionIdex++;
    });
  }

  void _resetQuiz() {
    _totalScore = 0;
    setState(() {
      _questionIdex = 0;
    });
    // print("reset");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("First ss App Bar"),
        ),
        body: _questionIdex < _questions.length
            ? Quiz(_ansQuestion, _questions, _questionIdex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
