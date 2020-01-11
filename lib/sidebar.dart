import 'package:flutter/material.dart';
import 'package:cocet_2600/main.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              COCET.start = 1;
              COCET.end = 500;
            },
          ),
        ),
        Card(
          color: Colors.cyanAccent,
          child: ListTile(
            title: Text('No.0501 ～ No.1000',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 24)),
            onTap: () {
              COCET.start = 501;
              COCET.end = 1000;
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
              COCET.start = 1001;
              COCET.end = 1500;
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
              COCET.start = 1501;
              COCET.end = 2000;
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
              COCET.start = 2001;
              COCET.end = 2600;
            },
          ),
        ),
      ]))
    ]));
  }

  void setter(int rangeStart, int rangeEnd) {}
}
