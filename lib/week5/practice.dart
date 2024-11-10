import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Center(
        child: Column(
          children: [
            Container(
              height: 100,
              color: Color.fromARGB(255, 156, 156, 156),
            ),
            Container(
              child: Container(height: 400, color: Colors.blue),
            ),
            Container(
              height: 100,
              color: Colors.green,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    color: Colors.pink,
                    width: 100,
                    height: 100,
                  )
                ],
              ),
            ),
            Container(
              height: 100,
              color: Color.fromARGB(255, 179, 179, 179),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: Color.fromARGB(255, 248, 244, 57),
                    width: 100,
                  ),
                  Container(
                    color: Color.fromARGB(255, 248, 244, 57),
                    width: 100,
                  ),
                  Container(
                    color: Color.fromARGB(255, 248, 244, 57),
                    width: 100,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                color: Colors.pink,
              ),
            )
          ],
        ),
      ),
    ),
  );
}
