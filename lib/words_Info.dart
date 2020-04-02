

import 'package:flutter/material.dart';



class Words_Info extends StatelessWidget {

  Map<String,dynamic> _data;

  Words_Info(this._data);

  Widget build(BuildContext build) {
    var counter = 0;
    return ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          if (index < 50 && counter < 50) {
            counter++;
            return _words_Info(index + 1, _data[(index + 1).toString()],context);
          }
        });
  }

  Widget _words_Info(int number, Map<String, dynamic> data,BuildContext context) {

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
}