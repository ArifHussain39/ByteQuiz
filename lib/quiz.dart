import 'package:byte_quiz/question.dart';

class Quiz {
  String name;
  String description;
  List<Question> questions;

  Quiz(
      {required this.name, required this.description, required this.questions});
}
