import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ucuncu_ders/green_page.dart';
import 'package:ucuncu_ders/main.dart';
import 'package:ucuncu_ders/ogrenci_detay.dart';
import 'package:ucuncu_ders/ogrenci_listesi.dart';
import 'package:ucuncu_ders/yellow_page.dart';

class RouteGenerator {
  static Route<dynamic>? _routeOlustur(
      Widget gidilecekWidget, RouteSettings settings) {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return CupertinoPageRoute(
          settings: settings, builder: (context) => gidilecekWidget);
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      return MaterialPageRoute(
          settings: settings, builder: (context) => gidilecekWidget);
    } else {
      return CupertinoPageRoute(
          settings: settings, builder: (context) => gidilecekWidget);
    }
  }

  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _routeOlustur(Anasayfa(), settings);
      case '/yellowPage':
        return _routeOlustur(YellowPage(), settings);
      case '/greenPage':
        return _routeOlustur(GreenPage(), settings);
      case '/ogrenciListesi':
        return _routeOlustur(OgrenciListesi(), settings);
      case '/ogrenciDetay':
        var parametredekiOgrenci = settings.arguments as Ogrenci;
        return _routeOlustur(
            OgrenciDetay(secilenOgrenci: parametredekiOgrenci), settings);
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(
              title: Text("404"),
            ),
            body: Center(
              child: Text("Sayfa bulunamadı"),
            ),
          ),
        );
    }
  }
}
