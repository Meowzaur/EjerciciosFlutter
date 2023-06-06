import 'package:flutter/material.dart';
import 'Pantalla.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Probando drawer',
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Barra superior'),
          ),
        ),
        drawer: MenuLateral(),
        body: Center(
          child: Text('Parte principal'),
        ),
        persistentFooterButtons: <Widget>[
          ElevatedButton(
            onPressed: () {},
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Icon(
              Icons.clear,
              color: Colors.white,
            ),
          ),
        ],
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ),
      ),
    );
  }
}
