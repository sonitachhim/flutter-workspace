import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Container(
          padding: const EdgeInsets.all(40),
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(40),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 181, 223, 255),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Center(
                  child: Text(
                    "OOP",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(40),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 111, 205, 255),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Center(
                  child: Text(
                    "DART",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(40),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: [Color.fromARGB(255, 44, 159, 241),Color.fromARGB(255, 11, 76, 240)]),
                  
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Center(
                  child: Text(
                    "FLUTTER",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
              ),
            ],
          )),
    ),
  );
}
