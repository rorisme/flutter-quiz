import 'package:flutter/material.dart';

import '../UI/answer_button.dart';
import '../UI/question_text.dart';
import '../UI/correct_wrong_overlay.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState () => new _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Column(
          children: <Widget>[
            new AnswerButton(true, () => print("You answered true")),
            new QuestionText("Flutter is awesome", 2),
            new AnswerButton(false, () => print("You answered false"))
          ],
        ),
        // new CorrectWrongOverlay(true)
      ],
    );
  }
}
