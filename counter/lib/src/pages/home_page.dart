import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(fontSize: 30.0);
    final numberOfClicks = 0;
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
            style: textStyle,
          )),
          Center(
            child: Text(
              "$numberOfClicks",
              style: textStyle,
            ),
          )
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
