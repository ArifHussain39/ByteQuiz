import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:byte_quiz/home_page.dart';

void main() {
  runApp(const byte_quizApp());
}

class byte_quizApp extends StatelessWidget {
  const byte_quizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'byte_quiz',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xffe8b86d)),
        useMaterial3: true,
        textTheme: GoogleFonts.quicksandTextTheme(),
      ),
      home: const HomePage(),
    );
  }
}
