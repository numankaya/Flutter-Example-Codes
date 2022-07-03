import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ucuncu_ders/red_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatelessWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.red.shade300),
              onPressed: () async {
                int? _gelenSayi = await Navigator.push<int>(
                  context,
                  CupertinoPageRoute(
                    builder: (redContext) => RedPage(),
                  ),
                );
                print("Ana sayfadaki sayı $_gelenSayi");
              },
              child: Text("Kırmızı Sayfa Gir IOS"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.red.shade300),
              onPressed: () {
                Navigator.of(context)
                    .push<int>(
                        MaterialPageRoute(builder: (redContext) => RedPage()))
                    .then((int? value) => debugPrint("Gelen sayı $value"));
              },
              child: Text("Kırmızı Sayfa Gir Android"),
            ),
          ],
        ),
      ),
    );
  }
}
