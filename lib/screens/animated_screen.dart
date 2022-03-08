import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.indigo;
  BorderRadiusGeometry _borderRadiusGeometry = BorderRadius.circular(10);

  void changeShape() {
    double max = 300;
    Random rnd = Random();

    _width = rnd.nextDouble() * max;
    _height = rnd.nextDouble() * max;
    _color = Color.fromARGB(
        generateRandomColorForRGB(),
        generateRandomColorForRGB(),
        generateRandomColorForRGB(),
        generateRandomColorForRGB());
    _borderRadiusGeometry = BorderRadius.circular(rnd.nextDouble() * max);
    setState(() {});
  }

  int generateRandomColorForRGB() {
    int maxColorRGB = 255;
    int minColorRGB = 0;
    Random rnd = Random();
    return minColorRGB + rnd.nextInt(maxColorRGB - minColorRGB);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 800),
          curve: Curves.easeOutCubic,
          width: _width,
          height: _height,
          decoration:
              BoxDecoration(color: _color, borderRadius: _borderRadiusGeometry),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(
            Icons.play_circle_fill_outlined,
            size: 45,
          ),
          onPressed: () => changeShape()),
    );
  }
}
