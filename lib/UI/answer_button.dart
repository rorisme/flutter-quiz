import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {

  final bool _answer;
  final VoidCallback _onTap;

  AnswerButton(this._answer, this._onTap);

  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new Material(
        color: _answer == true ? Colors.greenAccent : Colors.redAccent,
        child: new InkWell(
          onTap: () => _onTap(),
          child: new Center(
            child: new Container(
              decoration: _boxDecoration1,
              padding: new EdgeInsets.all(16.0),
              child: _buttonText(_answer)
            ),
          ),
        ),
      )
    );
  }
}

Border _border1 = new Border.all(color: Colors.white, width: 4.0);
BorderRadius _borderRadius1 = new BorderRadius.all(new Radius.circular(6.0));

BoxDecoration _boxDecoration1 = new BoxDecoration(
  border: _border1,
  borderRadius: _borderRadius1
);

TextStyle _style1 = new TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontStyle: FontStyle.italic,
  fontSize: 30.0,
);

Text _buttonText(bool answer) {
  return new Text(
    answer == true ? "True" : "False",
    style: _style1
  );
}
