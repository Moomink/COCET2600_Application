import 'dart:convert' show json;
import 'dart:ui' show TextAlign;
import 'dart:core';
import 'package:cocet_2600/main.dart';
import 'package:cocet_2600/words_Info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:scoped_model/scoped_model.dart';

class Words_List extends StatelessWidget {
  int rangeStart = 0;
  int rangeEnd = 0;

  Future<Map<String, dynamic>> loadJson(int start,int end) async {
    String fileData = await rootBundle.loadString('assets/data/word_${start}-${end}.json');
    return json.decode(fileData);
  }

  Words_List(this.rangeStart, this.rangeEnd);

  Widget build(BuildContext build) {
    int list = (rangeEnd - rangeStart + 1) ~/ 50;
    int i = -1;
    // ignore: missing_return
    return ListView.builder(itemBuilder: (context, index) {
      if (index < list) {
        i++;
        return _words_List(
            rangeStart + i * 50, rangeStart + i * 50 + 50 - 1, context);
      }
    });
  }

  Widget _words_List(int start, int end, BuildContext context) {
    return Card(
        color: Colors.cyanAccent,
        child: ListTile(
            onTap: () async {
              Map data = await loadJson(start,end);
              ScopedModel.of<BodyModel>(context).setBody(Words_Info(data));
            },
            title: Text(
              'No.$start ～ No.$end',
              style: TextStyle(color: Colors.black, fontSize: 30),
              textAlign: TextAlign.center,
            )));
  }
}
