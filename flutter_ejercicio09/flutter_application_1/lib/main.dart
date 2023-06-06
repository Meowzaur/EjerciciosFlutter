import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
          padding: EdgeInsets.all(16.0),
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text('Botón 1'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Botón 2'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Botón 3'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Botón 4'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Botón 5'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Botón 6'),
            ),
          ],
        ),
      ),
    );
  }
}
