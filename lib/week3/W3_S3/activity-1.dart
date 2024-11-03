import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    home: Column(
      children: [
        const myButton(),
        Container(
          padding: const EdgeInsets.all(40),
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                  colors: [Color(0xff4F7EF7), Color(0xff1142BF)]),
              borderRadius: BorderRadius.circular(30)),
          child: const Text("HELLO 2",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  decoration: TextDecoration.none)),
        ),
        Container(
          padding: const EdgeInsets.all(40),
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                  colors: [Color(0xff4F7EF7), Color(0xff1142BF)]),
              borderRadius: BorderRadius.circular(30)),
          child: const Text("HELLO 3",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  decoration: TextDecoration.none)),
        ),
      ],
    ),
  ));
}

class myButton extends StatelessWidget {
  const myButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: [Color(0xff4F7EF7), Color(0xff1142BF)]),
          borderRadius: BorderRadius.circular(30)),
      child: const Text("HELLO 1",
          style: TextStyle(
              color: Colors.white,
              fontSize: 35,
              decoration: TextDecoration.none)),
    );
  }
}