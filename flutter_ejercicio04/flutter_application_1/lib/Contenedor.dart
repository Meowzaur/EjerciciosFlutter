import 'package:flutter/material.dart';

class Contenedor extends StatelessWidget {
  final color;
  final alto;
  final ancho;
  final texto;
  final espaciado;
  final alineacion;

  Contenedor(this.color, this.alto, this.ancho, this.espaciado, this.alineacion,
      this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: this.color,
      width: this.ancho,
      height: this.alto,
      padding: EdgeInsets.all(espaciado),
      alignment: this.alineacion,
      child: Text(this.texto),
    );
  }
}
