import 'package:flutter/material.dart';

class HobbyCard extends StatelessWidget {
  const HobbyCard(this.title, this.icon, this.backgroundColor, {super.key});

  final String title;
  final IconData icon;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      // margin: const EdgeInsets.all(40),
      padding: const EdgeInsets.all(20),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(icon, color: Colors.white, size: 40),
            const SizedBox(
              width: 20,
            ),
            Text(
              title,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              HobbyCard('hiking', Icons.hiking, Colors.blue),
              SizedBox(
                height: 10,
              ),
              HobbyCard('reading', Icons.book, Colors.green),
            ],
          ),
        ),
      ),
    ),
  ));
}
