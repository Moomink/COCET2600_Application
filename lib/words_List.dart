import 'dart:convert' show json;
import 'dart:ui' show TextAlign;
import 'dart:core';
import 'package:cocet_2600/main.dart';
import 'package:cocet_2600/words_Info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:scoped_model/scoped_model.dart';


  void loadJson() async {
    String fileData = await rootBundle.loadString('assets/data/word_1-50.json');
    data = json.decode(fileData);
  }
  var data;
/*  Widget build(BuildContext build) => MaterialApp(
   home: Scaffold(
     appBar: AppBar(
       title:Text('ShowWords'),
       centerTitle: true,
     ),
     drawer: sideBar(build),
     body: list(),
   ),
  );*/

  Widget words_List(var rangeStart,var rangeEnd){
    int list = (rangeEnd - rangeStart + 1) ~/ 50;
    int i = -1;
    // ignore: missing_return
    return ListView.builder(itemBuilder: (context, index) {
      if (index < list) {
        i++;
        return _words_List(rangeStart + i * 50, rangeStart + i * 50 + 50 - 1,context);
      }
    });
  }

  Widget _words_List(int start, int end,BuildContext context) {
    return Card(
        color: Colors.cyanAccent,
        child: ListTile(
            onTap: () async {
              await loadJson();
              ScopedModel.of<BodyModel>(context).setBody(words_Info(data));
            },
            title: Text(
              'No.$start ～ No.$end',
              style: TextStyle(color: Colors.black, fontSize: 30),
              textAlign: TextAlign.center,
            )));
  }
