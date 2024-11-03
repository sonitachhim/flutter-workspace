// Start from the exercice 3 code
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: box(),
    ),
  ));
}

class box extends StatelessWidget {
  const box({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      margin: const EdgeInsets.all(10),
      child: const Column(
        children: [
          CustomContainer(
            color: Color.fromARGB(255, 111, 205, 255),
            text: "OOP",
          ),
          CustomContainer(
            color: Color.fromARGB(255, 111, 205, 255),
            text: "DART",
          ),
          CustomContainer(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 44, 159, 241),
                Color.fromARGB(255, 11, 76, 240)
              ],
            ),
            text: "FLUTTER",
          ),
        ],
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final Color? color;
  final String text;
  final Gradient? gradient;

  const CustomContainer({
    super.key,
    this.color,
    required this.text,
    this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        gradient: gradient,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
    );
  }
}
