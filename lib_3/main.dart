import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ucuncu_ders/green_page.dart';
import 'package:ucuncu_ders/ogrenci_listesi.dart';
import 'package:ucuncu_ders/red_page.dart';
import 'package:ucuncu_ders/route_generator.dart';
import 'package:ucuncu_ders/yellow_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      /*
      //home: Anasayfa(),
      routes: {
        '/redPage': (context) => RedPage(),
        '/': (context) => Anasayfa(),
        '/orangePage': (context) => YellowPage(),
      },
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: Text("Error"),
          ),
          body: Center(
            child: Text("404"),
          ),
        ),
      ),
      */
      onGenerateRoute: RouteGenerator.routeGenerator,
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
                Navigator.of(context).maybePop();
              },
              child: Text("Kırmızı Sayfa Gir Android"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.red.shade300),
              onPressed: () {
                Navigator.of(context)
                    .push<int>(
                        MaterialPageRoute(builder: (redContext) => RedPage()))
                    .then((int? value) => debugPrint("Gelen sayı $value"));
              },
              child: Text("Maybe pop kullanımı"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/greenPage");
              },
              style: ElevatedButton.styleFrom(primary: Colors.blue.shade600),
              child: Text("PushNamed Kullanımı"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed('/ogrenciListesi', arguments: 60);
              },
              style: ElevatedButton.styleFrom(primary: Colors.orange),
              child: Text("Liste Oluştur"),
            ),
          ],
        ),
      ),
    );
  }
}
