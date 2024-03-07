// 11. Realiza un formulario que permita un nombre y una contraseña. No
// hay que guardar los datos pero realiza un diseño adecuado probando
// distintos elementos explicados en este apartado. Hay que controlar
// que el nombre sea correcto y que la contraseña también.

import 'package:flutter/material.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejercicio 11'),
      ),
      body: const Center(
        child: Text(
          'Screen Three',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
