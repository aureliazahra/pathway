import 'package:flutter/material.dart';

class Sphere extends StatelessWidget {
  final double diameter;
  final bool dark;
  const Sphere({super.key, required this.diameter, required this.dark});

  @override
  Widget build(BuildContext context) {
    final base = dark
    ? [const Color(0xFF0B1228), const Color(0xFF1C2541)]
    : [const Color(0xFFEFF4FF), const Color(0xFF9FB7FF)];
    return Container(
      height: diameter,
      width: diameter,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          center: Alignment(-0.36, -0.36),
          radius: 1.0,
          colors: [base[0], base[1]],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.35), blurRadius: 22, offset: const Offset(0, 12)
          )
        ]
      ),
    );
  }
}
