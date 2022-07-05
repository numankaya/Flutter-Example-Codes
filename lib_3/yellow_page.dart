import 'package:flutter/material.dart';

class YellowPage extends StatelessWidget {
  const YellowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Yellow Page"),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              style: ElevatedButton.styleFrom(primary: Colors.purple.shade600),
              child: Text("Geri Dön"),
            ),
            Text(
              "Yellow Page",
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
