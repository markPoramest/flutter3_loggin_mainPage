import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_3/model/Song.dart';
import 'package:intl/intl.dart';


class SongList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SongList();
}

class _SongList extends State<SongList> {
  final List<Song> song = [
    Song(
        title: 'Lose Control',
        picture: 'assets/images/lose_control.jpg',
        dateTime: DateTime.now(),
        time: 2),
    Song(
        title: 'Shape of You',
        picture: 'assets/images/shape_of_you.jpg',
        dateTime: DateTime.now(),
        time: 4),
    Song(
        title: 'Perfect',
        picture: 'assets/images/perfect.jpg',
        dateTime: DateTime.now(),
        time: 4),
  ];
  Widget buildCard(Song tx) {
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
                subtitle: Text(new DateFormat('dd/MM/yyyy').format(tx.dateTime)+"  "+ tx.time.toString()+" min"))
          ])),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ...song.map((tx) {
          return buildCard(tx);
        }).toList()
      ],
    );
  }

  }