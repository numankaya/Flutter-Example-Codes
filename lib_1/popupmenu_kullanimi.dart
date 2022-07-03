import 'package:flutter/material.dart';

class PopupmenuKullanimi extends StatefulWidget {
  const PopupmenuKullanimi({Key? key}) : super(key: key);

  @override
  State<PopupmenuKullanimi> createState() => _PopupmenuKullanimiState();
}

class _PopupmenuKullanimiState extends State<PopupmenuKullanimi> {
  String _secilenSehir = "";
  List<String> renkler = ["Mavi", "Yesil", "Kirmizi", "Sari"];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton(
        onSelected: (String sehir) {
          setState(() {
            _secilenSehir = sehir;
          });
        },
        //child: Text(_secilenSehir),
        itemBuilder: (BuildContext context) {
          // return <PopupMenuEntry<String>>[
          //   PopupMenuItem(
          //     child: Text("Ankara"),
          //     value: "Ankara",
          //   ),
          //   PopupMenuItem(
          //     child: Text("Bursa"),
          //     value: "Bursa",
          //   ),
          //   PopupMenuItem(
          //     child: Text("Sivas"),
          //     value: "Sivas",
          //   ),
          // ];

          return renkler
              .map(
                (String renk) => PopupMenuItem(
                  child: Text(renk),
                  value: renk,
                ),
              )
              .toList();
        },
      ),
    );
  }
}
