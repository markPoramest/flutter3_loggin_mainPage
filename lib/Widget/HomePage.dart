import 'package:flutter/material.dart';
import 'package:flutter_3/Widget/HomeBody.dart';

class MyHomePage1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyMainPageState();
}

class _MyMainPageState extends State<MyHomePage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text(
            "",
            style: TextStyle(color: Colors.amber),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,),
        body: SingleChildScrollView(
            child: HomeBody()
        )

    );
  }
}