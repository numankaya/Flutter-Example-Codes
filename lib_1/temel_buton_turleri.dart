import 'package:flutter/material.dart';

class TemelButonlar extends StatelessWidget {
  const TemelButonlar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
          onPressed: () {},
          onLongPress: () {
            debugPrint("Uzun basıldı.");
          },
          style: TextButton.styleFrom(
            backgroundColor: Colors.red,
          ),
          child: Text('textButton'),
        ),
        TextButton.icon(
          style: ButtonStyle(
              //backgroundColor: MaterialStateProperty.all(Colors.red),
              backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.teal;
                }
                if (states.contains(MaterialState.hovered)) {
                  return Colors.orange;
                }
                return null;
              }),
              foregroundColor: MaterialStateProperty.all(Colors.yellow),
              overlayColor:
                  MaterialStateProperty.all(Colors.yellow.withOpacity(0.5))),
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text("Text Button with Icon"),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              primary: Colors.red, onPrimary: Colors.yellow),
          child: Text("Elevated Button"),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text("Elevated with Icon"),
        ),
        OutlinedButton(
          onPressed: () {},
          child: Text("Outlined Button"),
        ),
        OutlinedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text("Outlined with Icon"),
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: Colors.red, width: 2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
