import 'package:flutter/material.dart';

class AnswerList extends StatelessWidget {
  final List<String> _answers;
  final int? selectedAnswer;
  final int? correctAnswer;
  final double itemMaxWidth;
  final Function(int index) onTap;

  const AnswerList(
    this._answers, {
    super.key,
    required this.selectedAnswer,
    this.correctAnswer,
    required this.itemMaxWidth,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _answers.length,
      itemBuilder: (context, index) {
        final isSelected = selectedAnswer == index;
        final isCorrect = correctAnswer == index;
        return GestureDetector(
          onTap: () => onTap(index),
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            constraints: BoxConstraints(maxWidth: itemMaxWidth),
            decoration: BoxDecoration(
              color: isSelected
                  ? (isCorrect ? Colors.green : Colors.red)
                  : Colors.grey[800],
              borderRadius: BorderRadius.circular(8.0),
            ),
            padding: const EdgeInsets.all(16.0),
            child: Text(
              _answers[index],
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ),
        );
      },
    );
  }
}