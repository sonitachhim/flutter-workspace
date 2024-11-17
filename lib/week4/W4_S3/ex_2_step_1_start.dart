import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Favorite cards"),
        ),
        body: const CardList(),
      ),
    ));

class CardList extends StatelessWidget {
  const CardList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CardContainer(),
        CardContainer(),
        CardContainer(),
      ],
    );
  }
}

class CardContainer extends StatefulWidget {
  const CardContainer({
    super.key,
  });

  @override
  State<CardContainer> createState() => _CardContainerState();
}

class _CardContainerState extends State<CardContainer> {
  bool onPressed = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(width: 1, color: Colors.grey)),
      ),
      padding: const EdgeInsets.all(20),
      // YOUR CODE
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Expanded(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'title',
                  style: TextStyle(color: Colors.blue, fontSize: 16),
                ),
                SizedBox(
                  height: 5,
                ),
                Text('description'),
              ],
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.favorite,
              color: onPressed ? Colors.red: Colors.grey,
            ),
            onPressed: () {
              setState(() {
                onPressed = !onPressed;
              });
            },
          ),
        ],
      ),
    );
  }
}
