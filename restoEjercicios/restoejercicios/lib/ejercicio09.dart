// 9º Hacer un muestrario con los botones, punto 5.4
// que hemos expuesto en los apuntes u otros del enlace
// https://flutter.dev/docs/development/ui/widgets/material#Buttons.
// Para ello tenemos que realizar un gridview de dos columnas donde
// se muestren cada uno de ellos. Poner 6 botones por lo menos.

import 'package:flutter/material.dart';

class Botonera extends StatelessWidget {
  const Botonera({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejercicio 09'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          Card(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ElevatedButton(
                      onPressed: () {}, child: const Text('Elevated')),
                ],
              ),
            ),
          ),
          Card(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  FilledButton(onPressed: () {}, child: const Text('Filled')),
                ],
              ),
            ),
          ),
          Card(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  OutlinedButton(
                      onPressed: () {}, child: const Text('Outlined')),
                ],
              ),
            ),
          ),
          Card(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  TextButton(onPressed: () {}, child: const Text('Text')),
                ],
              ),
            ),
          ),
          Card(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  FloatingActionButton.small(
                    onPressed: () {},
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  FloatingActionButton.large(
                    onPressed: () {
                      // Add your onPressed code here!
                    },
                    child: const Icon(Icons.edit_outlined),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
