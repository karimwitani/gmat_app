import 'package:flutter/material.dart';
import 'package:gmat_app/components/module_selection_component.dart';

void main() => runApp(QuizzApp());

class QuizzApp extends StatelessWidget {
  const QuizzApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            AppBar(title: Text('GMAT Prep')),
            SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [StudyModule('Numeric')],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}