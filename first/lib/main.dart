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
  static const _questions = [
    {
      "question": "What's your fav color ? ",
      "options": ["Red", "Blue", "Black", "Yellow"]
    },
    {
      "question": "What's your fav animal ? ",
      "options": ["Lion", "Dog", "Cat", "Rabbit"]
    }
  ];
  var _questionIdex = 0;
  void _ansQuestion() {
    print("Answered");
    setState(() {
      _questionIdex++;
      print(_questionIdex);
      if (_questionIdex < _questions.length) {
        print("More questions");
      } else {
        print("No more questions");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("First ss App Bar"),
        ),
        body: _questionIdex < _questions.length
            ? Column(
                children: [
                  Question(
                    _questions[_questionIdex]['question'] as String,
                  ),
                  ...(_questions[_questionIdex]['options'] as List<String>)
                      .map((option) {
                    return Answer(_ansQuestion, option);
                  })
                ],
              )
            : Center(
                child: Text("Done"),
              ),
      ),
    );
  }
}
