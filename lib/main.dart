import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:byte_quiz/home_page.dart';

void main() {
  runApp(const ByteQuizApp());
}

class ByteQuizApp extends StatelessWidget {
  const ByteQuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ByteQuiz',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(
          primary: Color(0xff1db954), // Neon green for programming theme
          secondary: Color(0xff1db954),
          background: Color(0xff121212), // Dark background for tech vibe
          surface: Color(0xff222222), // Slightly lighter dark for contrast
          onPrimary: Colors.black,
          onBackground: Colors.white,
        ),
        useMaterial3: true,
        textTheme: GoogleFonts.robotoMonoTextTheme(),
        scaffoldBackgroundColor: const Color(0xff121212),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff1db954),
          foregroundColor: Colors.black,
        ),
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to HomePage after 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.code,
              size: 100,
              color: const Color(0xff1db954),
            ),
            const SizedBox(height: 20),
            Text(
              'ByteQuiz',
              style: GoogleFonts.robotoMono(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Sharpen Your Programming Skills',
              style: GoogleFonts.robotoMono(
                fontSize: 16,
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 40),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(const Color(0xff1db954)),
            ),
          ],
        ),
      ),
    );
  }
}
