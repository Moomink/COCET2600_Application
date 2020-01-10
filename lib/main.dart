import 'dart:ui';

import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  AppState createState() => AppState();
}

class AppState extends State<MyApp> {
  Widget build(BuildContext context) => MaterialApp(
        title: 'COCET 2600',
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('COCET 2600'),
          ),
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.blue,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/NITKC.jpg'))),
                  child: Text(
                    'COCET 2600',
                    style: TextStyle(color: Colors.black, fontSize: 24),
                    textAlign: TextAlign.center,
                  ),
                ),
                Card(
                  color: Colors.cyanAccent,
                  child: ListTile(
                    title: Text('No.0001 ～ No.0500',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 20)),
                  ),
                ),
                Card(
                  color: Colors.cyanAccent,
                  child: ListTile(
                    title: Text('No.0501 ～ No.1000',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 20)),
                  ),
                ),
                Card(
                  color: Colors.cyanAccent,
                  child: ListTile(
                    title: Text('No.1001 ～ No.1500',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 20)),
                  ),
                ),
                Card(
                  color: Colors.cyanAccent,
                  child: ListTile(
                    title: Text('No.1501 ～ No.2000',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 20)),
                  ),
                ),
                Card(
                  color: Colors.cyanAccent,
                  child: ListTile(
                    title: Text('No.2001 ～ No.2600',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 20)),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
