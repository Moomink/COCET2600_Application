import 'dart:ui';
import 'dart:core';
import 'package:flutter/material.dart';

Widget wordList(int rangeStart, int rangeEnd) {
  int list = (rangeEnd - rangeStart + 1) ~/ 50;
  int i = -1;
  // ignore: missing_return
  return ListView.builder(itemBuilder: (context, index) {
    if (index < list) {
      i++;
      return _buildList(rangeStart + i * 50, rangeStart + i * 50 + 50 - 1);
    }
  });
}

Widget _buildList(int start, int end) {
  return Card(
      color: Colors.cyanAccent,
      child: Text(
        'No.$start ～ No.$end',
        style: TextStyle(color: Colors.black, fontSize: 30),
        textAlign: TextAlign.center,
      ));
}
