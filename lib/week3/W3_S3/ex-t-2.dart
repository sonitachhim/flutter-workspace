import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton(this.title, {super.key});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(40),
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: [Color(0xFF4E7DF5), Color(0xFF0335B6)]),
          borderRadius: BorderRadius.circular(30)),
      child: Text(
        title,
        style: const TextStyle(
            fontSize: 35.0,
            fontWeight: FontWeight.w700,
            color: Colors.white,
            decoration: TextDecoration.none),
      ),
    );
  }
}

class MyIcon extends StatelessWidget {
  const MyIcon(this.color, {super.key});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return  Icon(Icons.access_alarm, color: color,);
  }
}

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: Center(
        child: Column(
          children: [
            MyIcon(Colors.red),
            MyButton('hello 2'),
            MyButton('hello 3'),
          ],
        ),
      ),
    ),
  ));
}
