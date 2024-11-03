import 'package:flutter/material.dart';
import 'gradient.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: Center(
        child: Column(
          children: [
            MyButton('hello 1'),
            MyButton('hello 2'),
          ],
        ),
      ),
    ),
  ));
}