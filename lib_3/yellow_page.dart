import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  const RedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Yellow Page"),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
          child: Text(
        "Yellow Page",
        style: TextStyle(fontSize: 24),
      )),
    );
  }
}
