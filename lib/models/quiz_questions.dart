//This dart file is the blue print for how the questions will be shown
// in the UI.

class QuizQuestion {
  QuizQuestion({required this.text, required this.answers});

  final String text;
  final List<String> answers;

// getShuffledAnswers() this function is used to shuffle the answers
// for the UI screen.
  List<String> getShuffledAnswers() {
    final List<String> shuffledAnswers = answers;

    shuffledAnswers.shuffle();
    return shuffledAnswers;
  }
}
