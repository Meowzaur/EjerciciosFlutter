// 12. En un formulario hay un número que tenemos que averiguar desde el 1
// hasta el 100. El formulario se validará cuando acertemos el valor. Para
// ello, hay que poner el teclado numérico y dar mensajes adecuados si el
// número introducido es menor o mayor al que hay que descubrir. Utilizad
// otros elementos que no hayáis utilizado en el ejercicio anterior.

import 'package:flutter/material.dart';

class ScreenFour extends StatelessWidget {
  const ScreenFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejercicio 12'),
      ),
      body: const Center(
        child: Text(
          'Screen Four',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
