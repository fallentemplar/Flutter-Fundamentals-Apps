import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  TextStyle _textStyle = TextStyle(fontSize: 30.0);
  int _clicksCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My counter"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Center(
                child: Text(
              "Count of clicks",
              style: _textStyle,
            )),
            Center(
              child: Text(
                "$_clicksCounter",
                style: _textStyle,
              ),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        floatingActionButton: _createBottomButtons());
  }

  Widget _createBottomButtons() {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      SizedBox(width: 30.0),
      FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: reset),
      Expanded(child: SizedBox()),
      FloatingActionButton(child: Icon(Icons.remove), onPressed: remove),
      SizedBox(width: 5.0),
      FloatingActionButton(child: Icon(Icons.add), onPressed: add),
    ]);
  }

  add() {
    setState(() => _clicksCounter++);
  }

  remove() {
    setState(() => _clicksCounter--);
  }

  reset() {
    setState(() => _clicksCounter = 0);
  }
}
