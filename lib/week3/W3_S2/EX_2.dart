import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Container(
          padding: const EdgeInsets.all(40),
          margin: const EdgeInsets.all(20),
          color: const Color(0xff4F7EF7),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
            color: const Color(0xff1142BF),),
            child: const Center(
              child: Text("CADT STUDENTS",
              style: TextStyle(fontSize: 30, color: Colors.white),),
            ),
          ),
      ),
    ),
  );
}
