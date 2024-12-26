import 'package:flutter/material.dart';
import 'package:byte_quiz/home_page_small.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
        return const HomePageSmall();
    });
  }
}
