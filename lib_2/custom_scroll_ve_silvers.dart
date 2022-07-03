import 'package:flutter/material.dart';
import 'dart:math' as math;

class CollapsableToolBarOrnek extends StatelessWidget {
  const CollapsableToolBarOrnek({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text("Sliver App Bar"),
          backgroundColor: Colors.red,
          expandedHeight: 300,
          floating: true,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset("images/resim2.jpg", fit: BoxFit.cover),
          ),
        ),

        /*SliverList(
          delegate: SliverChildListDelegate(
            sabitListeElemanlari(),
          ),
        ),*/
        SliverPadding(
          padding: EdgeInsets.all(10),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              _dinamikElemanUretenFonksiyon,
              childCount: 6,
            ),
          ),
        ),
        SliverFixedExtentList(
            delegate: SliverChildListDelegate(sabitListeElemanlari()),
            itemExtent: 100),
        SliverFixedExtentList(
            delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon,
                childCount: 6),
            itemExtent: 50),
        SliverGrid(
          delegate: SliverChildListDelegate(sabitListeElemanlari()),
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        ),
        SliverGrid(
          delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon,
              childCount: 6),
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        ),
        SliverGrid(
          gridDelegate:
              SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 250),
          delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon,
              childCount: 6),
        )
        /* SliverGrid.count(crossAxisCount: 2),
        SliverGrid.extent(maxCrossAxisExtent: 200),*/
      ],
    );
  }

  List<Widget> sabitListeElemanlari() {
    return [
      Container(
        height: 100,
        color: Colors.blueAccent,
        alignment: Alignment.center,
        child: Text("Sabit Liste Elemanı 1",
            style: TextStyle(fontSize: 18), textAlign: TextAlign.center),
      ),
      Container(
        height: 100,
        color: Colors.orangeAccent,
        alignment: Alignment.center,
        child: Text("Sabit Liste Elemanı 1",
            style: TextStyle(fontSize: 18), textAlign: TextAlign.center),
      ),
      Container(
        height: 100,
        color: Colors.blueGrey,
        alignment: Alignment.center,
        child: Text("Sabit Liste Elemanı 1",
            style: TextStyle(fontSize: 18), textAlign: TextAlign.center),
      ),
      Container(
        height: 100,
        color: Colors.amber,
        alignment: Alignment.center,
        child: Text("Sabit Liste Elemanı 1",
            style: TextStyle(fontSize: 18), textAlign: TextAlign.center),
      ),
      Container(
        height: 100,
        color: Colors.blueGrey,
        alignment: Alignment.center,
        child: Text("Sabit Liste Elemanı 1",
            style: TextStyle(fontSize: 18), textAlign: TextAlign.center),
      ),
      Container(
        height: 100,
        color: Colors.amber,
        alignment: Alignment.center,
        child: Text("Sabit Liste Elemanı 1",
            style: TextStyle(fontSize: 18), textAlign: TextAlign.center),
      ),
      Container(
        height: 100,
        color: Colors.blueGrey,
        alignment: Alignment.center,
        child: Text("Sabit Liste Elemanı 1",
            style: TextStyle(fontSize: 18), textAlign: TextAlign.center),
      ),
      Container(
        height: 100,
        color: Colors.amber,
        alignment: Alignment.center,
        child: Text("Sabit Liste Elemanı 1",
            style: TextStyle(fontSize: 18), textAlign: TextAlign.center),
      ),
      Container(
        height: 100,
        color: Colors.blueGrey,
        alignment: Alignment.center,
        child: Text("Sabit Liste Elemanı 1",
            style: TextStyle(fontSize: 18), textAlign: TextAlign.center),
      ),
      Container(
        height: 100,
        color: Colors.amber,
        alignment: Alignment.center,
        child: Text("Sabit Liste Elemanı 1",
            style: TextStyle(fontSize: 18), textAlign: TextAlign.center),
      ),
    ];
  }

  Widget _dinamikElemanUretenFonksiyon(BuildContext context, int index) {
    return Container(
      height: 150,
      color: rastgeleRenkUret(),
      alignment: Alignment.center,
      child: Text(
        "dinamik Liste Elemanı $index",
        style: TextStyle(fontSize: 18),
        textAlign: TextAlign.center,
      ),
    );
  }

  Color rastgeleRenkUret() {
    return Color.fromARGB(
      math.Random().nextInt(255),
      math.Random().nextInt(255),
      math.Random().nextInt(255),
      math.Random().nextInt(255),
    );
  }
}
