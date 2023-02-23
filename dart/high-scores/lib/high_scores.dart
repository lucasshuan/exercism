import 'dart:math';

class HighScores {
  List<int> scores;

  HighScores(this.scores);

  int latest() => scores.last;

  int personalBest() => scores.reduce(max);

  List<int> personalTopThree() {
    List<int> sorted = [...scores]..sort((a, b) => b - a);
    return sorted.take(3).toList();
  }
}
