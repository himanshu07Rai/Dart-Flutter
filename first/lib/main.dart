import 'package:flutter/material.dart';

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
    var _questions = ["What's your fav color ? ", "What's your fav animal?"];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("First ss App Bar"),
          ),
          body: Column(
            children: [
              Text(_questions[_questionIdex]),
              ElevatedButton(
                child: Text("Ans 1"),
                onPressed: _ansQuestion,
              ),
              ElevatedButton(
                child: Text("Ans 2"),
                onPressed: _ansQuestion,
              ),
              ElevatedButton(
                child: Text("Ans 3"),
                onPressed: null,
              ),
            ],
          )),
    );
  }
}
