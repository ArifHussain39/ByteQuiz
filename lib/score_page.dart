import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScorePage extends StatelessWidget {
  final int _score;

  const ScorePage(this._score, {super.key});

  // Function to return score color based on the score value
  Color _getScoreColor() {
    if (_score >= 80) {
      return const Color(0xff1db954); // Green for excellent
    } else if (_score >= 50) {
      return const Color(0xffffc107); // Yellow for good
    } else {
      return const Color(0xffff3b30); // Red for low
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212), // Dark mode background
      body: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Container(
            width: 320.0,
            height: 380.0,
            decoration: BoxDecoration(
              color: const Color(0xff222222), // Slightly lighter dark container
              borderRadius: const BorderRadius.all(Radius.circular(24.0)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 8.0,
                  spreadRadius: 2.0,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: [
                  // Score Heading
                  const Text(
                    'Your Score',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  // Score Display with dynamic color
                  Text(
                    _score.toString(),
                    style: GoogleFonts.robotoMono(
                      fontSize: 96.0,
                      fontWeight: FontWeight.bold,
                      color: _getScoreColor(), // Dynamic color based on score
                    ),
                  ),
                  const SizedBox(height: 24.0),
                  // Motivational Message
                  Text(
                    _score > 70
                        ? 'Excellent job! Keep coding!'
                        : 'Good effort! Keep practicing!',
                    style: GoogleFonts.robotoMono(
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.white70,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(),
                  // Finish Button
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff1db954), // Neon green
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 12.0,
                        horizontal: 32.0,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Finish',
                      style: GoogleFonts.robotoMono(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
