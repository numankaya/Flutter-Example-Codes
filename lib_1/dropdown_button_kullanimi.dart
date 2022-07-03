import 'package:flutter/material.dart';

class DropDownButtonKullanimi extends StatefulWidget {
  const DropDownButtonKullanimi({Key? key}) : super(key: key);

  @override
  State<DropDownButtonKullanimi> createState() =>
      _DropDownButtonKullanimiState();
}

class _DropDownButtonKullanimiState extends State<DropDownButtonKullanimi> {
  String? _secilenSehir = "Ankara";
  List<String> _tumSehirler = [
    "Ankara",
    "Bursa",
    "Istanbul",
    "İzmir",
    "Adıyaman",
    "Van"
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        hint: Text("Sehir Seçiniz"),
        icon: Icon(Icons.add),
        iconSize: 32,
        underline: Container(
          height: 4,
          color: Colors.purple,
        ),
        /* items: [
          DropdownMenuItem(
            child: Text("Ankara Sehri"),
            value: "Ankara",
          ),
          DropdownMenuItem(
            child: Text("İzmir Sehri"),
            value: "İzmir",
          ),
          DropdownMenuItem(
            child: Text("İstanbu Sehri"),
            value: "İstanbul",
          ),
        ],
        */
        items: _tumSehirler
            .map(
              (String oankiSehir) => DropdownMenuItem(
                child: Text(oankiSehir),
                value: oankiSehir,
              ),
            )
            .toList(),
        value: _secilenSehir,
        onChanged: (String? yeni) {
          setState(() {
            _secilenSehir = yeni;
          });
        },
      ),
    );
  }
}
