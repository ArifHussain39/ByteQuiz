import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:byte_quiz/answer_list.dart';
import 'package:byte_quiz/question.dart';

class QuizPageSmall extends StatelessWidget {
  final double questionSectionHeight;
  final Question question;
  final int? selectedAnswer;
  final int? correctAnswer;
  final Function backButtonOnPressed;
  final Function(int index) answerListOnTap;
  final Function() nextButtonOnPressed;
  final int currentQuestionIndex;
  final int totalQuestions;

  const QuizPageSmall({
    super.key,
    required this.questionSectionHeight,
    required this.question,
    this.selectedAnswer,
    this.correctAnswer,
    required this.backButtonOnPressed,
    required this.answerListOnTap,
    required this.nextButtonOnPressed,
    required this.currentQuestionIndex,
    required this.totalQuestions,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212), // Dark mode background
      floatingActionButton: FloatingActionButton.extended(
        label: Text(
          'Next',
          style: GoogleFonts.robotoMono(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        backgroundColor: const Color(0xff1db954), // Neon green for action button
        onPressed: () => nextButtonOnPressed(),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Question Tracker
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    'Question ${currentQuestionIndex + 1} of $totalQuestions',
                    style: GoogleFonts.robotoMono(
                      color: const Color(0xff1db954), // Neon green
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(totalQuestions, (index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4.0),
                        width: 20.0,
                        height: 20.0,
                        decoration: BoxDecoration(
                          color: index <= currentQuestionIndex
                              ? const Color(0xff1db954)
                              : Colors.grey,
                          shape: BoxShape.circle,
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
            // Question Section
            SizedBox(
              height: questionSectionHeight,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 32.0,
                          top: 72.0,
                          right: 32.0,
                          bottom: 16.0,
                        ),
                        child: Text(
                          question.name,
                          style: GoogleFonts.robotoMono(
                            color: const Color(0xff1db954), // Neon green
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  // Back Button
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      style: IconButton.styleFrom(
                        backgroundColor: const Color(0xff1db954),
                      ),
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                      onPressed: () => backButtonOnPressed(),
                    ),
                  ),
                ],
              ),
            ),
            // Answer List Section
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xff222222), // Slightly lighter dark for answers
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32.0),
                    topRight: Radius.circular(32.0),
                  ),
                ),
                child: SafeArea(
                  child: AnswerList(
                    question.answers,
                    selectedAnswer: selectedAnswer,
                    correctAnswer: correctAnswer,
                    itemMaxWidth: 400.0,
                    onTap: (int index) => answerListOnTap(index),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}