import 'package:flutter/material.dart';

const String dart = 'assets/skill/dart.png';
const String firebase = 'assets/skill/firebase.png';
const String flutter = 'assets/skill/flutter.png';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        //padding: const EdgeInsets.all(30),
        child: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Card(
              child: Column(
                children: [
                  Image.asset(dart),
                  const Text(
                    'Dart',
                    style: TextStyle(fontSize: 15),
                  ),
                  const Text('the best object language',
                  style: TextStyle(fontSize: 12),)
                ],
                
              ),
            )
          ],
        ),
        ),
      ),
    ),
  ));
}
