import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<dynamic> _questionBank = [
    MultipleChoiceSingleAnswer(
        'Point A is located on a number line. If point A is between x and y, which are values on the same number, and if 0<x<y, which of the following could represent the position of point A on the number line? ',
        ['x+1', 'x-1', 'y+1', 'y-1', 'x+y'],
        0),
    MultipleChoiceSingleAnswer(
        'If integer a is divisible by both 3 and 14, which of the following must be true?',
        [
          'a is divisible by 6',
          'a is equal to 42',
          'a is divisible by 21',
          'a is positive'
        ],
        1),
    MultipleChoiceSingleAnswer(
        'Point A and B are separated by 50 miles on a straight road. Cyclist A leaves point A, heading towards point B, at a constant speed of 15 miles per hour. At the same time, cyclist B leaves point B, traveling towards point A, at a constant speed of 10 miles per hour. How many minutes have elapsed until the two cyclists meet? ',
        ['4', '5', '10', '13', '7'],
        2),
    MultipleChoiceSingleAnswer(
        'If x < y and 0 < x+y, which of the following must be negative?',
        ['-x', '-y', 'x-y', '(x-y)^2', '2x-y'],
        3)
  ];

  int getCurrentQuestionIdx() {
    return _questionNumber;
  }

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  List<String> getAnswerOptions() {
    return _questionBank[_questionNumber].answerOptions;
  }

  int getCorrectAnswer() {
    return _questionBank[_questionNumber].correctAnswerIndex;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('quizz done');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
