import 'package:flutter/material.dart';

class GridViewOrnek extends StatelessWidget {
  const GridViewOrnek({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber.shade700,
        title: Text("GridView Örnek"),
      ),
      body: GridView.builder(
        itemCount: 100,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            child: Container(
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                borderRadius: new BorderRadius.all(new Radius.circular(20)),
                image: DecorationImage(
                  image: AssetImage("images/resim2.jpg"),
                  alignment: Alignment.topCenter,
                ),
                gradient: LinearGradient(
                  colors: [Colors.yellow, Colors.red],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              margin: EdgeInsets.all(20),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Merhaba Flutter",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            onTap: () => debugPrint("Merhaba Flutter $index tıklanıldı."),
            onDoubleTap: () =>
                debugPrint("Merhaba Flutter $index çift tıklanıldı."),
            onLongPress: () =>
                debugPrint("Merhaba Flutter $index uzun basıldı."),
            onHorizontalDragStart: (e) =>
                debugPrint("Merhaba Flutter $index uzun basıldı sürüklendi $e"),
          );
        },
      ),
    );
  }
}


/*

GridView.count(
        scrollDirection: Axis.horizontal,
        crossAxisCount: 3,
        primary: false,
        padding: EdgeInsets.all(10),
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: Text(
              "Merhaba Flutter",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: Text(
              "Merhaba Flutter",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: Text(
              "Merhaba Flutter",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: Text(
              "Merhaba Flutter",
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),

*/