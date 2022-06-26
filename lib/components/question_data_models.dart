class MultipleChoiceSingleAnswerDataModel {
  String? questionType;
  String? questionText;
  List<String>? answerOptions;
  int? correctAnswerIndex;

  MultipleChoiceSingleAnswerDataModel({
    this.questionType,
    this.questionText,
    this.answerOptions,
    this.correctAnswerIndex,
  });

  MultipleChoiceSingleAnswerDataModel.fromJson(Map<String, dynamic> json) {
    questionType = json['questionType'];
    questionText = json['questionText'];
    answerOptions = json['answerOptions'];
    correctAnswerIndex = json['correctAnswerIndex'];
  }
}
