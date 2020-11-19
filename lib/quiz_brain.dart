import 'package:flutter/material.dart';
import 'package:quizzler/question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Icon> scoreKeeper = [];

  List<Question> _questionBank = [
    Question(q: 'You can lead a cow down stairs but not up stairs.', a: false),
    Question(
        q: 'Approximately one quarter of human bones are in the feet.',
        a: true),
    Question(q: 'A slug\'s blood is green.', a: true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    } else {
      _questionNumber = 0;
    }
  }

  int getQuestionNumber() {
    return _questionNumber;
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrecrAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }
}
