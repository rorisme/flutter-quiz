import 'package:flutter/material.dart';

class CorrectWrongOverlay extends StatefulWidget {

  final _isCorrect;
  // final VoidCallback _onTap;

  CorrectWrongOverlay(this._isCorrect);

  @override
  State createState() => new CorrectWrongOverlayState();
}

class CorrectWrongOverlayState extends State<CorrectWrongOverlay> {
  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.black54,
      child: new InkWell(
        onTap: () => print("Overlay tapped"),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              decoration: new BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              child: new Icon(widget._isCorrect == true ? Icons.done : Icons.clear, size: 80.0)
            ),
            new Padding(padding: new EdgeInsets.only(bottom: 20.0)),
            new Text(widget._isCorrect == true ? "Correct!" : "Wrong!", style: new TextStyle(fontSize: 30.0, color: Colors.white))
          ],
        )
      )
    );
  }
}
