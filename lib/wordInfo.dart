import 'package:flutter/material.dart'
    show
        BorderRadius,
        BoxDecoration,
        Colors,
        Column,
        Container,
        Divider,
        Expanded,
        ListView,
        Row,
        Text,
        TextAlign,
        TextStyle,
        Widget;
import 'main.dart';

Widget wordInfo(int start) {
  Map<String, dynamic> data = COCET.data;
  int counter = 0;

//  debugPrint("${data["1"]}");
  // ignore: missing_return
  return ListView.builder(itemBuilder: (context, index) {
    if(index < 50 && counter < 50){
      counter++;
      return _buildList(index+1, data[(index+1).toString()]);
    }
  });
}

Widget _buildList(int number, Map<String, dynamic> data) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),color: Colors.blueAccent
    ),
    child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Text(
                'No:$number',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.black87),
              ),
            ),
            Expanded(
                flex: 2,
                child: Text(
                  '${data["Word"]}:${data["Meaning"]}',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 20, color: Colors.black38),
                ))
          ],
        ),
        Text(
          "${data["Example"]}",
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 15,
            color: Colors.black54,
          ),
        ),
      ],
    ),
  );
}
