## Privacy in dart

Privacy in Dart exists at the library, rather than the class level.

In dart '\_' is used before the variable name to declare it as private. Unlike other programming languages, here private doesn't mean it is available only to the class it is in, private means it is accessible in the file it is in and not accessible to other files.

## Using map

```dart
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
    var _questions = [
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

```
