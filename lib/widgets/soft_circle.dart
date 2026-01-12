import 'package:flutter/material.dart';

class SoftCircle extends StatelessWidget {
  final double diameter;
  final List<Color> colors;
  const SoftCircle({super.key, required this.diameter, required this.colors});

  @override
  Widget build(BuildContext context) {
    return Container(height: diameter, width: diameter, decoration: BoxDecoration(
      shape: BoxShape.circle,
      gradient: RadialGradient(
        colors: colors,
        stops: const [0.0, 1.0],
      )
    ));

  }
}
