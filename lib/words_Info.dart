import 'package:flutter/material.dart';

var counter = 0;

Widget words_Info(var _data) {
  ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        if (index < 50 && counter < 50) {
          debugPrint(_data[(index + 1).toString()]);
          counter++;
          return _words_Info(index + 1, _data[(index + 1).toString()]);
        }
      });
}

Widget _words_Info(int number, Map<String, dynamic> data) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), color: Colors.blueAccent),
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
                )),
          ],
        ),
        Divider(),
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