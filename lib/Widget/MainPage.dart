import 'package:flutter/material.dart';
import 'package:flutter_3/Widget/MainBody.dart';
import 'MainBody.dart';
class MyMainPage1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyMainPageState();
}

class _MyMainPageState extends State<MyMainPage1> {
int _cIndex = 0;

void _incrementTab(index) {
  setState(() {
    _cIndex = index;
  });
}

@override
Widget build(BuildContext context) {

  return Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('JOTARO',style: TextStyle(
                fontFamily: 'Freedam Theory',
                fontSize: 30
            ),)
          ],
        ),
        leading: new IconButton(icon: new Icon(Icons.settings), onPressed: ()=> {}),
      ),
      body: SingleChildScrollView(
          child: MainBody()
      ),
    bottomNavigationBar:BottomNavigationBar(
    currentIndex: _cIndex,
    type: BottomNavigationBarType.fixed ,
    items: [
      BottomNavigationBarItem(
          icon: Icon(Icons.search ,color: Colors.blueAccent),
          title: new Text('Discover',style: TextStyle(color: Colors.blueAccent,fontSize: 10),)
      ),
      BottomNavigationBarItem(
          icon: Icon(Icons.playlist_play ,color: Colors.blueAccent),
          title: new Text('Playlist',style: TextStyle(color: Colors.blueAccent,fontSize: 10),)
      ),
      BottomNavigationBarItem(
          icon: Icon(Icons.apps,color: Colors.blueAccent),
          title: new Text('Subscribtion',style: TextStyle(color: Colors.blueAccent,fontSize: 10))
      )
    ],
    onTap: (index){
      _incrementTab(index);
    },
  )
  );
}
}