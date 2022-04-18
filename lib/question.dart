class Question {
  late String questionText;
  late List<String> answerOptions;
  late int correctAnswerIndex;

  Question(String q, List<String> o, int idx) {
    questionText = q;
    answerOptions = o;
    correctAnswerIndex = idx;
  }
}
