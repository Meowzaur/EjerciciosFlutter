import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Mi primera aplicación',
    home: Scaffold(
      appBar: AppBar(
        title: Center(
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
                  Text('Llamar por teléfono'),
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
                  Text('Llamar por teléfono'),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/Phone.png'),
                  Text('Llamar por teléfono'),
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
                  Text('Llamar por teléfono'),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/Phone.png'),
                  Text('Llamar por teléfono'),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/Phone.png'),
                  Text('Llamar por teléfono'),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  ));
}
