// import 'package:advance_quiz_app/models/quiz_questions.dart';
import 'package:flutter/material.dart';
import 'package:advance_quiz_app/option_button.dart';
import 'package:advance_quiz_app/datas/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  // _QuestionScreenState createState() => _QuestionScreenState();
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void changeQuestion() {
    setState(() {
      currentQuestionIndex++;
      if (currentQuestionIndex >= questions.length) {
        currentQuestionIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),

            //...is a spread operator which is used to insert a list into a list.
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  OptionButton(
                    option: answer,
                    onTap: changeQuestion,
                  ),
                  const SizedBox(
                    height: 8,
                  )
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
