import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Challenge'),
        ),
        body: const Center(
          child: CircleWithText(),
        ),
      ),
    );
  }
}

class CircleWithText extends StatelessWidget {
  const CircleWithText({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: const EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.orange,
            width: 10,
          ),
        ),
        width: 280,
        height: 280,
        alignment: Alignment.center,
        child: const Text(
          'H',
          style: TextStyle(
            fontSize: 180,
            color: Colors.orange,
          ),
        ),
      ),
    );
  }
}
