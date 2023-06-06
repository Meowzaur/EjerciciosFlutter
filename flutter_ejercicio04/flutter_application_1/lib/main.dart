import 'package:flutter/material.dart';
import 'Contenedor.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'ejemplo de iconos',
        home: Scaffold(
            appBar: AppBar(
              title: Center(
                child: Text('Ejemplo de Container'),
              ),
            ),
            body: Row(children: <Widget>[
              Contenedor(
                  Colors.cyan, 120.0, 120.0, 10.0, Alignment.center, 'azul'),
              Contenedor(
                  Colors.pink, 100.0, 100.0, 15.0, Alignment.topRight, 'rosa'),
              Contenedor(Colors.green, 110.0, 110.0, 20.0, Alignment.bottomLeft,
                  'verde'),
            ])));
  }
}
