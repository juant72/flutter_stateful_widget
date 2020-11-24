import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(new MaterialApp(home: MyButton()));
}

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  String textFlutter = "";
  List<String> collection = ['Flutter', 'es', 'genial'];
  int index = 0;

  void onPressButton() {
    setState(() {
      textFlutter = collection[index];
      index = index < 2 ? index + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("Stateful Widget"),
          backgroundColor: Colors.orangeAccent,
        ),
        body: new Container(
            child: new Center(
                child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text(textFlutter, style: new TextStyle(fontSize: 40)),
            new Padding(padding: new EdgeInsets.all(10.0)),
            new RaisedButton(
              child: new Text(
                "Actualizar",
                style: new TextStyle(color: Colors.white),
              ),
              color: Colors.blueAccent,
              onPressed: onPressButton,
            )
          ],
        ))));
  }
}
