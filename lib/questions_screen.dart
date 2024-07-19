import 'package:flutter/material.dart';
import 'package:advance_quiz_app/option_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  // _QuestionScreenState createState() => _QuestionScreenState();
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Question appears here.',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          const SizedBox(height: 30),
          OptionButton(
            option: 'Answer 1',
            onTap: () {},
          ),
          const SizedBox(height: 10),
          OptionButton(
            option: 'Answer 2',
            onTap: () {},
          ),
          const SizedBox(height: 10),
          OptionButton(
            option: 'Answer 3',
            onTap: () {},
          ),
          const SizedBox(height: 10),
          OptionButton(
            option: 'Answer 4',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
