import 'package:cocet_2600/show_words.dart';
import 'package:flutter/material.dart';

void main() => runApp(COCET());

class COCET extends StatefulWidget {
  static int start = 1;
  static int end = 500;

  @override
  AppState createState() => AppState();
}

class AppState extends State<COCET> {
  Widget build(BuildContext context) {
    debugPrint("Main");
    return MaterialApp(
        title: 'COCET 2600',
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('COCET 2600'),
          ),
          drawer: Drawer(child: sideBar()),
          body: wordList(COCET.start, COCET.end),
        ));
  }

  Widget sideBar() {
    debugPrint("SideBar");
    return Container(
        child: Column(children: <Widget>[
      Row(children: <Widget>[
        Expanded(
            child: DrawerHeader(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/NITKC.jpg'))),
          child: Text('COCET 2600',
              style: TextStyle(color: Colors.black, fontSize: 24),
              textAlign: TextAlign.center),
        ))
      ]),
      Expanded(
          child: ListView(children: <Widget>[
        Card(
          color: Colors.cyanAccent,
          child: ListTile(
              title: Text('No.0001 ～ No.0500',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 24)),
              onTap: () {
                showList(1, 500);
              }),
        ),
        Card(
          color: Colors.cyanAccent,
          child: ListTile(
            title: Text('No.0501 ～ No.1000',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 24)),
            onTap: () {
              showList(501, 1000);
            },
          ),
        ),
        Card(
          color: Colors.cyanAccent,
          child: ListTile(
            title: Text('No.1001 ～ No.1500',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 24)),
            onTap: () {
              showList(1001, 1500);
            },
          ),
        ),
        Card(
          color: Colors.cyanAccent,
          child: ListTile(
            title: Text('No.1501 ～ No.2000',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 24)),
            onTap: () {
              showList(1501, 2000);
            },
          ),
        ),
        Card(
          color: Colors.cyanAccent,
          child: ListTile(
            title: Text('No.2001 ～ No.2600',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 24)),
            onTap: () {
              showList(2001, 2600);
            },
          ),
        ),
      ]))
    ]));
  }

  void showList(int start, int end) {
    COCET.start = start;
    COCET.end = end;
    setState(() {});
  }
}
