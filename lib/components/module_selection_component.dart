import 'package:flutter/material.dart';
import 'package:gmat_app/screens/quiz_page.dart';

class StudyModule extends StatelessWidget {
  //const StudyModule({Key? key}) : super(key: key);
  late String sectionName;

  StudyModule(String sectionName) {
    this.sectionName = sectionName;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const QuizPage()),
        );
      },
      child: Container(
        height: 100,
        width: 300,
        color: Colors.blue,
        child: Center(
          child: Text(sectionName),
        ),
      ),
    );
  }
}
