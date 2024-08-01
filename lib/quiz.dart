import 'package:advance_quiz_app/screens/questions_screen.dart';
import 'package:advance_quiz_app/screens/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:advance_quiz_app/datas/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = []; //list to store the selected answers.
  String activeScreen = 'start-screen';

  // @override
  // void initState() {
  //   activeScreen = StartScreen(startQuiz: switchScreen);
  //   super.initState();
  // }

  //function to switch screens.
  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
      selectedAnswers.clear();
    });
  }

  //Function to add choosed answers to the list for final checking.
  void chooseAnswers(answer) {
    selectedAnswers.add(answer);
    // Navigate to result screen when the quiz is over.
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'start-screen';
      });
    }
  }

  @override
  Widget build(BuildContext constext) {
    Widget screenWidget = StartScreen(startQuiz: switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen(
        onSelectAnswer: chooseAnswers,
      );
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
