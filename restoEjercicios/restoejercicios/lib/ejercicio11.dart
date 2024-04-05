// 11. Realiza un formulario que permita un nombre y una contraseña. No
// hay que guardar los datos pero realiza un diseño adecuado probando
// distintos elementos explicados en este apartado. Hay que controlar
// que el nombre sea correcto y que la contraseña también.

// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

void main() {
  runApp(const Formulario());
}

class Formulario extends StatelessWidget {
  const Formulario({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Formulario de Registro',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: const FormularioRegistro(),
    );
  }
}

class FormularioRegistro extends StatefulWidget {
  const FormularioRegistro({super.key});

  @override
  _FormularioRegistroState createState() => _FormularioRegistroState();
}

class _FormularioRegistroState extends State<FormularioRegistro> {
  final _formKey = GlobalKey<FormState>();
  String _nombreUsuario = '';
  String _contrasena = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejercicio 11'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Nombre de usuario',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor ingresa tu nombre de usuario';
                  }
                  return null;
                },
                onSaved: (value) {
                  _nombreUsuario = value!;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Contraseña',
                ),
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor ingresa tu contraseña';
                  }
                  return null;
                },
                onSaved: (value) {
                  _contrasena = value!;
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState?.save();
                      // Imprimir valores por consola.
                      print('Nombre de usuario: $_nombreUsuario');
                      print('Contraseña: $_contrasena');
                    }
                  },
                  child: const Text('Enviar'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
