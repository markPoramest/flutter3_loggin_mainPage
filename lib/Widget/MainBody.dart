import 'package:flutter/material.dart';
import 'file:///E:/Java%20Project/flutter_3/lib/Widget/List/TedList.dart';
import 'List/SongList.dart';
class MainBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainState();
}

class _MainState extends State<MainBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
               Text('Under 20 minutes', style: TextStyle(
                  fontSize: 20
              ),),
              RawMaterialButton(
                  constraints: BoxConstraints(),
                  padding: EdgeInsets.all(5.0), // optional, in order to add additional space around text if needed
                  child: Text('View all ',style: TextStyle( color: Colors.blue , fontSize: 15)),
                  onPressed: (){}
              ),
            ]),
        SongList(),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Ted x Talk', style: TextStyle(
                  fontSize: 20
              ),),
              RawMaterialButton(
                  constraints: BoxConstraints(),
                  padding: EdgeInsets.all(5.0), // optional, in order to add additional space around text if needed
                  child: Text('View all ',style: TextStyle( color: Colors.blue , fontSize: 15)),
                  onPressed: (){}
              ),
            ]),
        TedList(),

          ],
        );
  }

}