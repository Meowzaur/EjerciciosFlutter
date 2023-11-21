// ignore_for_file: file_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class Contenedor extends StatelessWidget {
  final color;
  final alto;
  final ancho;
  final texto;
  final margen;
  final alineacion;

  const Contenedor(this.color, this.alto, this.ancho, this.texto, this.margen,
      this.alineacion,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: ancho,
      height: alto,
      padding: margen,
      alignment: Alignment.bottomLeft,
      child: Text(texto),
    );
  }
}
