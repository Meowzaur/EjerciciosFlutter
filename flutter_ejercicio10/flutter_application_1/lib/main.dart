import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimateApp(),
    );
  }
}

class AnimateApp extends StatefulWidget {
  const AnimateApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _AnimateAppState();
  }
}

class _AnimateAppState extends State<AnimateApp>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> growAnimation;
  late Animation<double> slideAnimation;
  late CurvedAnimation curve;

  @override
  void initState() {
    super.initState();
    // Create AnimationController object
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2000));
    curve = CurvedAnimation(parent: controller, curve: Curves.easeIn);

    // Create Animation objects through Tween objects
    growAnimation = Tween(begin: 0.5, end: 1.0).animate(curve);
    slideAnimation = Tween(begin: -50.0, end: 50.0).animate(controller);

    // Perform initial animation
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AnimateApp',
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AnimateApp'),
        ),
        body: Center(
          child: GestureDetector(
            child: AnimatedBuilder(
              animation: growAnimation,
              builder: (context, child) {
                return Transform.scale(
                  scale: growAnimation.value,
                  child: child,
                );
              },
              child: AnimatedBuilder(
                animation: slideAnimation,
                builder: (context, child) {
                  return Transform.translate(
                    offset: Offset(slideAnimation.value, 0),
                    child: child,
                  );
                },
                child: const FlutterLogo(
                  size: 200.0,
                ),
              ),
            ),
            onTap: () {
              if (controller.isCompleted) {
                controller.reverse();
              } else {
                controller.forward();
              }
            },
            onDoubleTap: () {
              if (controller.isCompleted) {
                controller.forward;
              } else {
                controller.forward();
              }
            },
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Release resources
    controller.dispose();
    super.dispose();
  }
}
