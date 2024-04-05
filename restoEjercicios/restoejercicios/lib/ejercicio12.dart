// 12. En un formulario hay un número que tenemos que averiguar desde el 1
// hasta el 100. El formulario se validará cuando acertemos el valor. Para
// ello, hay que poner el teclado numérico y dar mensajes adecuados si el
// número introducido es menor o mayor al que hay que descubrir. Utilizad
// otros elementos que no hayáis utilizado en el ejercicio anterior.

// ignore_for_file: unnecessary_null_comparison, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const AdivinaNumero());
}

class AdivinaNumero extends StatelessWidget {
  const AdivinaNumero({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guess the Number',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: const GuessNumberPage(),
    );
  }
}

class GuessNumberPage extends StatefulWidget {
  const GuessNumberPage({super.key});

  @override
  _GuessNumberPageState createState() => _GuessNumberPageState();
}

class _GuessNumberPageState extends State<GuessNumberPage> {
  final _random = Random();
  late int _targetNumber;
  final TextEditingController _controller = TextEditingController();
  String _feedbackMessage = '';

  @override
  void initState() {
    super.initState();
    _targetNumber = _random.nextInt(100) + 1;
  }

  void _checkGuess(int guess) {
    setState(() {
      if (guess < _targetNumber) {
        _feedbackMessage = 'El número es mayor.';
      } else if (guess > _targetNumber) {
        _feedbackMessage = 'El número es menor.';
      } else {
        _feedbackMessage =
            '¡Felicidades! Has adivinado el número $_targetNumber.';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejercicio 12'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Adivina el número entre 1 y 100:',
              style: TextStyle(fontSize: 20.0),
            ),
            const SizedBox(height: 20.0),
            TextFormField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Ingresa tu suposición',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Por favor, ingresa un número.';
                }
                return null;
              },
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                if (_controller.text.isNotEmpty) {
                  int? guess = int.tryParse(_controller.text);
                  if (guess != null) {
                    _checkGuess(guess);
                  } else {
                    setState(() {
                      _feedbackMessage = 'Por favor, ingresa un número válido.';
                    });
                  }
                }
              },
              child: const Text('Comprobar'),
            ),
            const SizedBox(height: 20.0),
            Text(
              _feedbackMessage,
              style: const TextStyle(fontSize: 18.0, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
