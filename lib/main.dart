import 'package:cocet_2600/show_words.dart';
import 'package:cocet_2600/sidebar.dart';
import 'package:flutter/material.dart';

void main() => runApp(COCET());

class COCET extends StatefulWidget {
  static int start = 0;
  static int end = 0;
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
          drawer: Drawer(child: Sidebar()),
          body: wordList(COCET.start, COCET.end),
        )
    );
  }


}
