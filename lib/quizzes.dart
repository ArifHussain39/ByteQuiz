import 'package:byte_quiz/question.dart';
import 'package:byte_quiz/quiz.dart';

class Quizzes {
  static List<Quiz> get() {
    return [
      // Programming Basics Category
      Quiz(
        name: 'Programming Basics',
        description: 'Test your knowledge of basic programming concepts.',
        questions: [
          Question(
            name: 'Which of these is a valid variable name in Python?',
            answers: [
              '2_variable',
              '_variable',
              'variable!',
              'variable-name',
            ],
            correctAnswer: 1,
          ),
          Question(
            name: 'What does "HTML" stand for?',
            answers: [
              'HyperText Markup Language',
              'HighText Machine Language',
              'HyperText Machine Language',
              'HyperTool Markup Language',
            ],
            correctAnswer: 0,
          ),
          Question(
            name: 'Which of these is NOT a programming language?',
            answers: [
              'JavaScript',
              'C++',
              'HTML',
              'Python',
            ],
            correctAnswer: 2,
          ),
          Question(
            name: 'Which of the following is a data type in Python?',
            answers: [
              'int',
              'float',
              'str',
              'All of the above',
            ],
            correctAnswer: 3,
          ),
          Question(
            name: 'What is the purpose of the "break" statement in programming?',
            answers: [
              'To exit a loop or switch statement',
              'To continue to the next iteration of a loop',
              'To exit from a function',
              'To stop the program execution',
            ],
            correctAnswer: 0,
          ),
        ],
      ),
      // Advanced Programming Category
      Quiz(
        name: 'Advanced Programming',
        description: 'Challenge yourself with advanced programming topics.',
        questions: [
          Question(
            name: 'What is the output of: `print(2 ** 3)` in Python?',
            answers: [
              '6',
              '8',
              '9',
              'Error',
            ],
            correctAnswer: 1,
          ),
          Question(
            name: 'What does "OOP" stand for in programming?',
            answers: [
              'Object-Oriented Programming',
              'Operator-Oriented Programming',
              'Operation-Oriented Programming',
              'Object-Optimized Programming',
            ],
            correctAnswer: 0,
          ),
          Question(
            name: 'Which sorting algorithm is based on the divide-and-conquer paradigm?',
            answers: [
              'Bubble Sort',
              'Quick Sort',
              'Selection Sort',
              'Insertion Sort',
            ],
            correctAnswer: 1,
          ),
          Question(
            name: 'Which of the following is a feature of functional programming?',
            answers: [
              'First-class functions',
              'Mutable data structures',
              'Iteration over recursion',
              'Infix operators',
            ],
            correctAnswer: 0,
          ),
          Question(
            name: 'What is the time complexity of binary search?',
            answers: [
              'O(n)',
              'O(log n)',
              'O(n^2)',
              'O(1)',
            ],
            correctAnswer: 1,
          ),
        ],
      ),
      // Web Development Category
      Quiz(
        name: 'Web Development',
        description: 'Test your knowledge of web development technologies.',
        questions: [
          Question(
            name: 'Which HTML tag is used to display a clickable button?',
            answers: [
              '<button>',
              '<link>',
              '<input>',
              '<a>',
            ],
            correctAnswer: 0,
          ),
          Question(
            name: 'Which CSS property is used to change the text color?',
            answers: [
              'color',
              'text-color',
              'font-color',
              'text-style',
            ],
            correctAnswer: 0,
          ),
          Question(
            name: 'What is the purpose of the JavaScript "function" keyword?',
            answers: [
              'To declare a variable',
              'To define a function',
              'To create an object',
              'To declare a class',
            ],
            correctAnswer: 1,
          ),
          Question(
            name: 'Which HTML element is used to define an unordered list?',
            answers: [
              '<ol>',
              '<ul>',
              '<li>',
              '<dl>',
            ],
            correctAnswer: 1,
          ),
          Question(
            name: 'What is the correct syntax to link an external CSS file?',
            answers: [
              '<link rel="stylesheet" href="styles.css">',
              '<css src="styles.css">',
              '<style src="styles.css">',
              '<link src="styles.css">',
            ],
            correctAnswer: 0,
          ),
        ],
      ),
      // Data Structures Category
      Quiz(
        name: 'Data Structures',
        description: 'Test your knowledge of common data structures.',
        questions: [
          Question(
            name: 'What is the time complexity of accessing an element in an array?',
            answers: [
              'O(n)',
              'O(log n)',
              'O(1)',
              'O(n^2)',
            ],
            correctAnswer: 2,
          ),
          Question(
            name: 'Which data structure follows the Last-In-First-Out (LIFO) principle?',
            answers: [
              'Queue',
              'Stack',
              'Array',
              'Linked List',
            ],
            correctAnswer: 1,
          ),
          Question(
            name: 'Which of these is a balanced binary search tree?',
            answers: [
              'AVL Tree',
              'Binary Search Tree',
              'B-Tree',
              'Heap',
            ],
            correctAnswer: 0,
          ),
          Question(
            name: 'Which data structure is commonly used to implement recursion?',
            answers: [
              'Queue',
              'Stack',
              'Linked List',
              'Tree',
            ],
            correctAnswer: 1,
          ),
          Question(
            name: 'What is the time complexity of inserting an element at the beginning of a linked list?',
            answers: [
              'O(1)',
              'O(n)',
              'O(log n)',
              'O(n^2)',
            ],
            correctAnswer: 0,
          ),
        ],
      ),
      // Algorithms Category
      Quiz(
        name: 'Algorithms',
        description: 'Test your knowledge of popular algorithms.',
        questions: [
          Question(
            name: 'Which sorting algorithm has the best average time complexity?',
            answers: [
              'Bubble Sort',
              'Merge Sort',
              'Quick Sort',
              'Insertion Sort',
            ],
            correctAnswer: 1,
          ),
          Question(
            name: 'Which algorithm is used for finding the shortest path in a graph?',
            answers: [
              'Dijkstra’s Algorithm',
              'Floyd-Warshall Algorithm',
              'Kruskal’s Algorithm',
              'Prim’s Algorithm',
            ],
            correctAnswer: 0,
          ),
          Question(
            name: 'What is the time complexity of the quicksort algorithm?',
            answers: [
              'O(n log n)',
              'O(n^2)',
              'O(log n)',
              'O(n)',
            ],
            correctAnswer: 0,
          ),
          Question(
            name: 'Which algorithm is used for finding the greatest common divisor (GCD) of two numbers?',
            answers: [
              'Euclidean Algorithm',
              'Quick Sort',
              'Merge Sort',
              'Heap Sort',
            ],
            correctAnswer: 0,
          ),
          Question(
            name: 'What type of search algorithm is binary search?',
            answers: [
              'Linear Search',
              'Divide and Conquer',
              'Greedy Algorithm',
              'Backtracking',
            ],
            correctAnswer: 1,
          ),
        ],
      ),
    ];
  }
}
