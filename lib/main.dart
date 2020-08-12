import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ayuda',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
          body: Container(
        child: Center(
          child: Text(
            'Ayuda',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
        ),
      )),
    );
  }
}
