import 'dart:math';

import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  RedPage({Key? key}) : super(key: key);
  int _rastgeleSayi = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Red Page"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Red Page", style: TextStyle(fontSize: 24)),
            ElevatedButton(
              onPressed: () {
                _rastgeleSayi = Random().nextInt(100);
                print("Üretilen sayı $_rastgeleSayi");

                Navigator.of(context).pop(_rastgeleSayi);
              },
              child: Text("Geri Dön"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/yellowPage');
              },
              child: Text("Goto Orange"),
              style: ElevatedButton.styleFrom(primary: Colors.orange.shade400),
            ),
          ],
        ),
      ),
    );
  }
}
