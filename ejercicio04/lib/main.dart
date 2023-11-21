// 4. Realiza las modificaciones al código siguiente facilitado para
// que también podamos pasarle el padding y la alineación que deseemos
// a cada Container. Realiza las modificaciones tanto en la llamada a
// la clase como en la propia clase para poder pasarle este parámetro.

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
              title: const Center(
                child: Text('Ejemplo de Container'),
              ),
            ),
            body: const Row(children: <Widget>[
              Contenedor(
                Colors.red,
                180.0,
                180.0,
                'azul',
                EdgeInsets.all(16.0),
                Alignment.center,
              ),
              Contenedor(
                Colors.pink,
                100.0,
                100.0,
                'rosa',
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                Alignment.topLeft,
              ),
              Contenedor(
                Colors.green,
                140.0,
                140.0,
                'verde',
                EdgeInsets.only(left: 8.0, top: 16.0, right: 8.0, bottom: 16.0),
                Alignment.bottomRight,
              ),
            ])));
  }
}
