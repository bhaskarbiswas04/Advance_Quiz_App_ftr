import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // final List<Color> myColors = [Colors.deepPurple, Colors.purple];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.purple],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/quiz-logo.png',
                  height: 250,
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
                ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.forward,
                      color: Colors.white,
                      size: 40,
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 80, 12, 92),
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 30),
                    ),
                    label: const Text(
                      'Start Quiz',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
