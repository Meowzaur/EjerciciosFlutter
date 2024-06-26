// 10º En el ejercicio resuelto en el punto 5.6 (páginas 27-32) realiza:
// 1. Una mejora en el aspecto.
// 2. Inserta un color nuevo a las posibilidades de los colores que se
// presentan en pantalla.
// 3. Modifica el tiempo en el que varíen los colores y, cada vez que
// consiga cinco puntos se incremente la velocidad y cuando disminuya
// la puntuación, también disminuya la velocidad.
// 4. Cada vez que se produzca un acierto haz alguna animación.
// 5. Este programa tiene un error: cuando coincide el color del container
// y el nombre del color, cada pulsación te lo va a contar como acierto,
// pudiendo sumar más de un punto cada vez que se pulsa aunque solo haya
// habido una coincidencia. Busca una solución a este error.

import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';

class RandomColors extends StatefulWidget {
  const RandomColors({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RandomColors createState() => _RandomColors();
}

class _RandomColors extends State<RandomColors> {
  int points = 0;
  late String randomName;
  late Color randomColor;
  var colorNames = ['azul', 'verde', 'naranja', 'rosa', 'rojo', 'negro'];
  var colorHex = [
    const Color(0xFF0000FF),
    const Color(0xFF00FF00),
    const Color(0xFFFF914D),
    const Color(0xFFFF66C4),
    const Color(0xFFFF0000),
    const Color(0xFF000000)
  ];

  @override
  void initState() {
    super.initState();
    getRandomColor();
    getRandomName();
    timer();
  }

  int tiempo = 2000;
  late Timer _timer;
  void timer() {
    _timer = Timer.periodic(Duration(milliseconds: tiempo), (timer) {
      getRandomColor();
      getRandomName();
      setState(() {});
    });
  }

  double _fontSize = 30.0;

  void _increaseFontSize() {
    setState(() {
      _fontSize += 2.0;
    });
  }

  void _decreaseFontSize() {
    setState(() {
      if (_fontSize > 20) {
        _fontSize -= 1.0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Ejercicio 10'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              '¡Pulsa cuando el color y el nombre coincidan!',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              'Puntos: $points',
              style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: _fontSize),
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  onGiftTap(randomName, randomColor);
                },
                child: Column(
                  children: [
                    Container(
                      width: 120,
                      color: randomColor,
                      height: 120,
                    ),
                    Text(
                      randomName,
                      style: TextStyle(
                          color: randomColor,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void getRandomColor() {
    Random random = Random();
    int randomNumber = random.nextInt(6);
    randomColor = colorHex[randomNumber];
  }

  void getRandomName() {
    Random random = Random();
    int randomNumber = random.nextInt(6);
    randomName = colorNames[randomNumber];
  }

  String hexToStringConverter(Color hexColor) {
    if (hexColor == const Color(0xFF0000FF)) {
      return 'azul';
    } else if (hexColor == const Color(0xFF00FF00)) {
      return 'verde';
    } else if (hexColor == const Color(0xFFFF914D)) {
      return 'naranja';
    } else if (hexColor == const Color(0xFFFF66C4)) {
      return 'rosa';
    } else if (hexColor == const Color(0xFFFF0000)) {
      return 'rojo';
    } else if (hexColor == const Color(0xFF000000)) {
      return 'negro';
    } else {
      return 'nada';
    }
  }

  void onGiftTap(String name, Color color) {
    var colorToString = hexToStringConverter(color);
    if (name == colorToString) {
      _increaseFontSize();
      points++;
    } else {
      _decreaseFontSize();
      points--;
    }
    int variable = (points / 5).truncate();
    tiempo = (2000 - (999 * variable));
    _timer.cancel();
    getRandomColor();
    getRandomName();
    setState(() {});
    timer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
