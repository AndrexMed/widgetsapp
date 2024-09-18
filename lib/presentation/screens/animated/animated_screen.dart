import 'package:flutter/material.dart';
import 'dart:math' show Random;

class AnimatedScreen extends StatefulWidget {
  static const name = 'animated_screen';
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double width = 50;
  double height = 50;
  Color color = Colors.indigo;
  double borderRadius = 10.0;
  Duration duration = const Duration(seconds: 1);

  void changeShape() {
    final randon = Random();

    width = randon.nextInt(300) + 120;
    height = randon.nextInt(300) + 120;
    color = Color.fromRGBO(
        randon.nextInt(255), randon.nextInt(255), randon.nextInt(255), 1);
    borderRadius = randon.nextInt(100).toDouble();
    duration = Duration(milliseconds: randon.nextInt(3000) + 1000);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: duration,
          curve: Curves.bounceInOut,
          width: width < 0 ? 0 : width,
          height: height,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(borderRadius)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: changeShape, child: const Icon(Icons.play_arrow)),
    );
  }
}
