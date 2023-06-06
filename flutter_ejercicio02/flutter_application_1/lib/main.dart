import 'package:flutter/material.dart';

// Este es el método principal
void main() {
  runApp(const Center(
    child: Text(
      "Realiza una app en la que incluyamos una fuente de letra, distinta a la utilizada en clase, en el fichero pubspec.yaml y donde pongamos un texto lo suficientemente largo para que desborde el tamaño de nuestro campo de texto y tengamos que ver cómo manejar este desbordamiento.",
      textDirection: TextDirection.ltr,
      style: TextStyle(
        fontFamily: 'Pokemon',
      ),
    ),
  ));
}
