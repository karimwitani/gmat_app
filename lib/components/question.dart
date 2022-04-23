class Question {
  String questionText;
  Question(this.questionText);
}

class MultipleChoiceSingleAnswer extends Question {
  List<String> answerOptions;
  int correctAnswerIndex;

  MultipleChoiceSingleAnswer(
    String questionText,
    this.answerOptions,
    this.correctAnswerIndex,
  ) : super(questionText);
}

class MultipleChoiceMultipleAnswer extends Question {
  List<String> answerOptions;
  List<int> correctAnswerIndexes;

  MultipleChoiceMultipleAnswer(
    String questionText,
    this.answerOptions,
    this.correctAnswerIndexes,
  ) : super(questionText);
}
