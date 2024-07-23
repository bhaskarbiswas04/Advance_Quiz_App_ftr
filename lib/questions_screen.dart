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
  final currentQuestion = questions[0];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
            ...currentQuestion.answers.map((answers) {
              return OptionButton(option: answers, onTap: () {});
            })
          ],
        ),
      ),
    );
  }
}
