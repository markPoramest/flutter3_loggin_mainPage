import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_3/model/Ted.dart';
import 'package:intl/intl.dart';


class TedList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TedList();
}

class _TedList extends State<TedList> {
  final List<Ted> ted = [
    Ted(
        title: 'Simon Sinek: How great leaders inspire action',
        picture: 'assets/images/ted.jpg',
        like:50,
        comment: 3),
    Ted(
        title: 'Your body language may shape who you are',
        picture: 'assets/images/ted.jpg',
        like:74,
        comment: 17),
    Ted(
        title: 'Brené Brown: The power of vulnerability',
        picture: 'assets/images/ted.jpg',
        like:12,
        comment: 0),
    Ted(
        title: 'BSusan Cain: The power of introverts',
        picture: 'assets/images/ted.jpg',
        like:172,
        comment: 14),
    Ted(
        title: 'How to gain control of your free time',
        picture: 'assets/images/ted.jpg',
        like:89,
        comment: 5),
  ];
  Widget buildCard(Ted tx) {
    return Container(
      padding: EdgeInsets.only(bottom: 5),
      child: RaisedButton(
          onPressed: () => {},
          color: Colors.white,
          splashColor: Colors.blueAccent,
          child:
          Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            ListTile(
                leading: Image.asset(tx.picture),
                title: Text(tx.title),
                subtitle: Row(
                  children: <Widget>[
                    Icon(Icons.thumb_up),
                    Text(tx.like.toString()+"   "),
                    Icon(Icons.comment),
                    Text(tx.comment.toString())
                  ],
                ))
          ])),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ...ted.map((tx) {
          return buildCard(tx);
        }).toList()
      ],
    );
  }

}