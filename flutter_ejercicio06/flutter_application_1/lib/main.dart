import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'ejemplo de iconos',
        home: Scaffold(
            appBar: AppBar(
              title: Row(
                children: [Text('Challenge')],
              ),
              backgroundColor: Colors.orange,
            ),
            body: Center(
                child: Container(
              margin: const EdgeInsets.only(top: 20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.orange,
                  width: 10,
                ),
              ),
              width: 280,
              height: 280,
              child: const Text(
                'H',
                style: TextStyle(
                  fontSize: 180,
                  color: Colors.orange,
                ),
              ),
            ))));
  }
}
