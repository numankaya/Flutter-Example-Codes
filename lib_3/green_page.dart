import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  const RedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Green Page"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text(
          "Green Page",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
