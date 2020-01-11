import 'dart:ui';
import 'dart:core';
import 'package:flutter/material.dart';

Widget wordList(int rangeStart, int rangeEnd) {
  int list = (rangeEnd - rangeStart + 1) ~/ 50;
  // ignore: missing_return
  return ListView.builder(itemBuilder: (context, tmp) {
    for (int i = 0; i < list; i++) {
      Card(
          color: Colors.cyanAccent,
          child: Text(
            'No.${rangeStart + i * 50} ～ No.${rangeStart + i * 50 + 50}',
            style: TextStyle(color: Colors.black38, fontSize: 20),
          ));
    }
  });
}
