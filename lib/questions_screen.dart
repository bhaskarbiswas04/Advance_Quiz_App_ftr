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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
          const SizedBox(height: 30),
          OptionButton(
            option: currentQuestion.answers[0],
            onTap: () {},
          ),
          const SizedBox(height: 10),
          OptionButton(
            option: currentQuestion.answers[1],
            onTap: () {},
          ),
          const SizedBox(height: 10),
          OptionButton(
            option: currentQuestion.answers[2],
            onTap: () {},
          ),
          const SizedBox(height: 10),
          OptionButton(
            option: currentQuestion.answers[3],
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
