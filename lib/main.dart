import 'package:flutter/material.dart';
import 'Widget/MainPage.dart';
import 'Widget/HomePage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter 2 ', home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyHomePage1();
  }
}

class MyMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyMainPage1();
  }
}
