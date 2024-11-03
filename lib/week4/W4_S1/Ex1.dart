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
      margin: const EdgeInsets.all(40),
      padding: const EdgeInsets.all(40),
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
        child: Column(
          children: [
            HobbyCard('hiking', Icons.hiking, Colors.blue),
            HobbyCard('reading', Icons.book, Colors.green),
          ],
        ),
      ),
    ),
  ));
}
