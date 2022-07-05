import 'package:flutter/material.dart';
import 'package:ucuncu_ders/ogrenci_listesi.dart';

class OgrenciDetay extends StatelessWidget {
  final Ogrenci secilenOgrenci;

  const OgrenciDetay({required this.secilenOgrenci, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ogrenci Detay")),
      body: Center(
        child: Column(
          children: [
            Text(secilenOgrenci.id.toString()),
            Text(secilenOgrenci.isim),
            Text(secilenOgrenci.soyisim),
          ],
        ),
      ),
    );
  }
}
