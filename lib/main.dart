import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  AppState createState() => AppState();
}

class AppState extends State<MyApp>{
  Widget build(BuildContext context) => MaterialApp(
    title: 'COCET 2600',
    home: Scaffold(
//      appBar: AppBar(
//        centerTitle: true,
//        title: Text('COCET 2600'),
//      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(

              child: Text('COCET 2600',style: TextStyle(color: Colors.white,fontSize: 24),textAlign: TextAlign.center,),
              decoration: BoxDecoration(
                color: Colors.blue
              ),
            ),
          ],
        ),
      ),
    ),
  );
}