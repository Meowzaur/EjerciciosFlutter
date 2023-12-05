// 7º Realizar un drawer personalizado, poniendo una imagen que te interese, un
// nombre adecuado y personalizando los elementos de menú con nombres distintos
// a los que vienen en el ejemplo y poniendo al menos 5 elementos en el menú.

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
          title: const Center(
            child: Text('Barra superior'),
          ),
        ),
        drawer: const MenuLateral(),
        body: const Center(
          child: Text(
              'Pulsa el botón de las tres líneas, situado arriba izquierda.'),
        ),
      ),
    );
  }
}
