import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Custom buttons"),
        ),
        body: const Center(
          child: ButtonList(),
        ),
      ),
    ));

class ButtonList extends StatelessWidget{
  const ButtonList({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Button(),
        SizedBox(height: 20,),
        Button(),
        SizedBox(height: 20,),
        Button(),
        SizedBox(height: 20,),
        Button(),
      ]
    );
  }
}

class Button extends StatefulWidget {
  const Button({
    super.key,
  });

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  bool onPressed = true;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 100,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: onPressed ? Colors.blue[50] : Colors.blue[500],
            foregroundColor: onPressed ? Colors.black : Colors.white),
        onPressed: () {
          setState(() {
            onPressed = !onPressed;
          });
        },
        child: Text(onPressed ? 'Not selected' : 'Selected'),
      ),
    );
  }
}
