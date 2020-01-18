import 'dart:convert' show json;
import 'dart:ui' show TextAlign;
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

import 'main.dart';



void loadJson() async {
  String fileData =await rootBundle.loadString('assets/data/word_1-50.json');
  COCET.data = json.decode(fileData);
}

Widget wordList(int rangeStart,int rangeEnd,State<COCET> tmp){
  int list = (rangeEnd - rangeStart + 1) ~/ 50;
  int i = -1;
  // ignore: missing_return
  return ListView.builder(itemBuilder: (context, index) {
    if (index < list) {
      i++;
      return _buildList(rangeStart + i * 50, rangeStart + i * 50 + 50 - 1,tmp);
    }
  });
}

Widget _buildList(int start, int end,State<COCET> tmp) {
  return Card(
      color: Colors.cyanAccent,
      child: ListTile(
        onTap: () async {
          await loadJson();
          tmp.setState((){
            COCET.status = "words";
          }
          );
          },
          title: Text(
        'No.$start ～ No.$end',
        style: TextStyle(color: Colors.black, fontSize: 30),
        textAlign: TextAlign.center,
      )));
}
