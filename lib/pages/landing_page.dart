import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.blueAccent,
      child: new InkWell(
        onTap: () => print("We tapped the page!"),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("Let's Quiz", style: _style1),
            new Text("Tap to start!", style: _style2)
          ],
        ),
      )
    );
  }
}

TextStyle _style1 = new TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontSize: 45.0,
);

TextStyle _style2 = new TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);
