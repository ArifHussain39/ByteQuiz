import 'package:flutter/material.dart';
import 'package:byte_quiz/quiz.dart';
import 'package:byte_quiz/quiz_page_small.dart';
import 'package:byte_quiz/score_page.dart';

class QuizPage extends StatefulWidget {
  final Quiz _quiz;

  const QuizPage(this._quiz, {super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int _currentQuestion = 0;
  int? _selectedAnswer;
  int _point = 0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
     
        return QuizPageSmall(
          questionSectionHeight: constraints.maxHeight / 100 * 40,
          question: widget._quiz.questions[_currentQuestion],
          selectedAnswer: _selectedAnswer,
          backButtonOnPressed: () {
            Navigator.pop(context);
          },
          answerListOnTap: (int index) {
            setState(() {
              _selectedAnswer = index;
            });
          },
          nextButtonOnPressed: () {
            if (_selectedAnswer != null) {
              if (_selectedAnswer ==
                  widget._quiz.questions[_currentQuestion].correctAnswer) {
                setState(() {
                  _point++;
                });
              }
              if (_currentQuestion < widget._quiz.questions.length - 1) {
                setState(() {
                  _selectedAnswer = null;
                  _currentQuestion++;
                });
              } else {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ScorePage(
                      ((_point / widget._quiz.questions.length * 100) as num)
                          .toInt());
                }));
              }
            }
          },
        );
      
    });
  }
}
