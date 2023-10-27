import 'package:flutter/material.dart';

class Contenedor extends StatelessWidget {
  final color;
  final alto;
  final ancho;
  final texto;
  final margen;
  final alineacion;

  Contenedor(this.color, this.alto, this.ancho, this.texto, this.margen,
      this.alineacion);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: this.color,
      width: this.ancho,
      height: this.alto,
      padding: this.margen,
      alignment: Alignment.bottomLeft,
      child: Text(this.texto),
    );
  }
}
