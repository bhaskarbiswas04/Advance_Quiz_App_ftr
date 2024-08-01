// import 'package:advance_quiz_app/quiz.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({required this.startQuiz, super.key});

  final void Function() startQuiz;
  //startQuiz stores the function from quiz.dart which is passed as a function

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
          Text(
            'Learn flutter the fun way!',
            style: GoogleFonts.montserrat(
              fontSize: 25,
              color: const Color.fromARGB(255, 226, 178, 236),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          OutlinedButton.icon(
              onPressed: startQuiz,
              icon: const Icon(
                // Icons.arrow_right_alt,
                Icons.manage_accounts,

                color: Colors.white,
                size: 40,
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
