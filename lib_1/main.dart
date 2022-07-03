import 'package:flutter/material.dart';
import 'package:flutter_projects/dropdown_button_kullanimi.dart';
import 'package:flutter_projects/image_widgets.dart';
import 'package:flutter_projects/my_counter_page.dart';
import 'package:flutter_projects/popupmenu_kullanimi.dart';
import 'package:flutter_projects/temel_buton_turleri.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Counter APP",
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image Örnekleri "),
          actions: [PopupmenuKullanimi()],
        ),
        body: PopupmenuKullanimi(),
      ),
    );
  }
}
