import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './pages/MainScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Alcool ou Gasolina",
      theme: ThemeData(
        primaryColor: Colors.cyan[900],
        brightness: Brightness.dark,
      ),
      home: MainScrenn(),
    );
  }
}
