import 'package:advance_quiz_app/questions_screen.dart';
import 'package:advance_quiz_app/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  String activeScreen = 'start-screen';

  // @override
  // void initState() {
  //   activeScreen = StartScreen(startQuiz: switchScreen);
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext constext) {
    Widget screenWidget = StartScreen(startQuiz: switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = const QuestionScreen();
    }

    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurple, Colors.purple],
          ),
        ),
        child: screenWidget,
        // child: activeScreen == 'start-screen'
        //     ? StartScreen(startQuiz: switchScreen)
        //     : const QuestionScreen(),
      ),
    );
  }
}
