// 5º Busca cómo utilizar el método transform
// para hacer una animación de los contenedores.

import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Animación de Rotación y Escala'),
        ),
        body: const Center(
          child: RotatingAndScalingImage(),
        ),
      ),
    );
  }
}

class RotatingAndScalingImage extends StatefulWidget {
  const RotatingAndScalingImage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RotatingAndScalingImageState createState() =>
      _RotatingAndScalingImageState();
}

class _RotatingAndScalingImageState extends State<RotatingAndScalingImage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context, Widget? child) {
        return Transform.rotate(
          angle: _controller.value * 2.0 * math.pi,
          child: Transform.scale(
            scale: 0.5 + (_controller.value * 0.5),
            child: Image.network(
              'https://indiehoy.com/wp-content/uploads/2018/10/Coraje-el-perro-cobarde-640x383.jpg',
              width: 200,
              height: 200,
            ),
          ),
        );
      },
    );
  }
}
