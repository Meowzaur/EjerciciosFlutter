import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'ejemplo de iconos',
        home: Scaffold(
            appBar: AppBar(
              title: Center(
                child: Text('Ejemplo de Container'),
              ),
            ),
            body: Row(children: <Widget>[
              Container(
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(10.0),
                  alignment: Alignment.center,
                  width: 400,
                  color: Colors.cyan,
                  height: 400,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/Redimensionada.jpg'),
                        Text('Aqui una imagen.'),
                      ]))
            ])));
  }
}
