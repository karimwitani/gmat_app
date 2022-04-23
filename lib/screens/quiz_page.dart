import 'package:flutter/material.dart';
import 'package:gmat_app/components/quizbrain.dart';

final quizBrain = QuizBrain();

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  Map scorekeeper = Map<int, bool>();
  void checkAnswer(int chosenOptionIndex) {
    int correctAnswerIndex = quizBrain.getCorrectAnswer();
    int currentQuestionIdx = quizBrain.getCurrentQuestionIdx();
    setState(() {
      if (quizBrain.isFinished() == true) {
        quizBrain.reset();
      } else {
        if (chosenOptionIndex == correctAnswerIndex) {
          print("Correct Answer");
          scorekeeper[currentQuestionIdx] = true;
        } else {
          print("False Answer");
          scorekeeper[currentQuestionIdx] = false;
        }
        quizBrain.nextQuestion();
      }
      print(scorekeeper);
    });
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Center(
            child: Text(
              quizBrain.getQuestionText(),
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 25.0, color: Colors.black),
            ),
          ),
        ),
        ListView.builder(
            shrinkWrap: true,
            itemCount: quizBrain.getAnswerOptions().length,
            itemBuilder: (BuildContext context, int index) {
              return ElevatedButton(
                onPressed: () {
                  checkAnswer(index);
                },
                child: Text(
                  quizBrain.getAnswerOptions()[index],
                ),
              );
            })
      ],
    );
  }
}
