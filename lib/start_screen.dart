import 'package:advance_quiz_app/quiz.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            height: 250,
            color: const Color.fromARGB(120, 246, 246, 246),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Learn flutter the fun way!',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          const SizedBox(
            height: 50,
          ),
          OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_right_alt,
                color: Colors.white,
                size: 60,
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 80, 12, 92),
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              ),
              label: const Text(
                'Start Quiz',
                style: TextStyle(fontSize: 25, color: Colors.white),
              )),
        ],
      ),
    );
  }
}
