// 1º Realizar una disposición en pantalla como se muestra en pantalla, la idea
// es que tenga tres filas con los elementos que se muestran. Para realizarla,
// hay que hacer uso de los widgets Row y Column. También es necesario ser
// capaz de disponer los elementos en pantalla utilizando crossAxisAlignment.

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Mi primera aplicación',
    home: Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Ejemplo de filas y columnas añadidas'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/Phone.png'),
                  const Text('Llamar por teléfono'),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/Phone.png'),
                  const Text('Llamar por teléfono'),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/Phone.png'),
                  const Text('Llamar por teléfono'),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/Phone.png'),
                  const Text('Llamar por teléfono'),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/Phone.png'),
                  const Text('Llamar por teléfono'),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/Phone.png'),
                  const Text('Llamar por teléfono'),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  ));
}
