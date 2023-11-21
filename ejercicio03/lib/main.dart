// 3. Crea un contenedor y personaliza su diseño a tu gusto,
// incluyendo una imagen y un texto debajo de esa imagen.

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            width: 400,
                            height: 400,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 57, 67, 137),
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                color: Colors.black, // Color del borde
                                width: 5.0, // Ancho del borde
                              ),
                            ),
                            child: Center(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  "assets/Eustaquio.jpg",
                                  width: 300,
                                  height: 200,
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  'Eustaquio',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            )))
                      ])
                ]))));
  }
}
