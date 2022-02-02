import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIdex = 0;
  void _ansQuestion() {
    print("Answered");
    setState(() {
      if (_questionIdex == 1) {
        _questionIdex--;
        return;
      }
      _questionIdex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    const _questions = [
      {
        "question": "What's your fav color ? ",
        "options": ["Red", "Blue", "Black", "Yellow"]
      },
      {
        "question": "What's your fav animal ? ",
        "options": ["Lion", "Dog", "Cat", "Rabbit"]
      }
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("First ss App Bar"),
          ),
          body: Column(
            children: [
              Question(_questions[_questionIdex]['question']),
              ...(_questions[_questionIdex]['options'] as List<String>)
                  .map((option) {
                return Answer(_ansQuestion, option);
              })
            ],
          )),
    );
  }
}
