import 'package:flutter/material.dart';
import "./question.dart";
import './answer.dart';

class Quiz extends StatelessWidget {
  final VoidCallback ansQuestion;
  final List<Map<String, Object>> questions;
  final int questionIndex;

  Quiz(this.ansQuestion, this.questions, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['question'] as String,
        ),
        ...(questions[questionIndex]['options'] as List<String>).map((option) {
          return Answer(ansQuestion, option);
        })
      ],
    );
  }
}
