import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adivinar el número',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GuessNumberForm(),
    );
  }
}

class GuessNumberForm extends StatefulWidget {
  @override
  _GuessNumberFormState createState() => _GuessNumberFormState();
}

class _GuessNumberFormState extends State<GuessNumberForm> {
  final _formKey = GlobalKey<FormState>();
  final _random = Random();
  int _targetNumber = 0;
  TextEditingController _numberController = TextEditingController();
  String _message = '';

  @override
  void initState() {
    super.initState();
    _targetNumber = _random.nextInt(100) + 1;
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      int guessedNumber = int.parse(_numberController.text);
      if (guessedNumber == _targetNumber) {
        // Adivinó el número correctamente
        setState(() {
          _message = '¡Felicitaciones! Has adivinado el número $_targetNumber';
        });
      } else if (guessedNumber < _targetNumber) {
        // El número introducido es menor al número objetivo
        setState(() {
          _message = 'Intenta con un número mayor';
        });
      } else {
        // El número introducido es mayor al número objetivo
        setState(() {
          _message = 'Intenta con un número menor';
        });
      }
    }
  }

  @override
  void dispose() {
    _numberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adivinar el número'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextFormField(
                controller: _numberController,
                decoration: InputDecoration(labelText: 'Introduce un número'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, introduce un número';
                  }
                  int? number = int.tryParse(value);
                  if (number == null || number < 1 || number > 100) {
                    return 'Por favor, introduce un número válido del 1 al 100';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: _submitForm,
                child: Text('Adivinar'),
              ),
              SizedBox(height: 16.0),
              Text(_message, style: TextStyle(fontSize: 16.0)),
            ],
          ),
        ),
      ),
    );
  }
}
