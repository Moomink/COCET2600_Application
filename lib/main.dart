import 'package:cocet_2600/show_words.dart';
import 'package:flutter/material.dart';
import 'package:cocet_2600/wordInfo.dart';

void main() => runApp(COCET());

class COCET extends StatefulWidget {
  static int start = 1;
  static int end = 500;
  static int words_start = 0;
  static String status = "main";
  static Map data;

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
          body: phase(),
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
                setState(() {
                  COCET.start = 1;
                  COCET.end = 500;
                  COCET.status = "wordList";
                });
              }),
        ),
        Card(
          color: Colors.cyanAccent,
          child: ListTile(
            title: Text('No.0501 ～ No.1000',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 24)),
            onTap: () {
              setState(() {
                COCET.start = 501;
                COCET.end = 1000;
                COCET.status = "wordList";
              });
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
              setState(() {
                COCET.start = 1001;
                COCET.end = 1500;
                COCET.status = "wordList";
              });
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
              setState(() {
                COCET.start = 1501;
                COCET.end = 2000;
                COCET.status = "wordList";
              });
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
              setState(() {
                COCET.start = 2001;
                COCET.end = 2600;
                COCET.status = "wordList";
              });
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

  Widget phase() {
    switch (COCET.status) {
      case "wordList":
        return wordList(COCET.start, COCET.end, this);
        break;

      case "words":
        return wordInfo(COCET.words_start);
        break;

      default:
        return null;
        break;
    }
  }
}
