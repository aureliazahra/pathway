import 'package:flutter/material.dart';
import 'package:pathway/core/theme.dart';
import 'package:pathway/widgets/soft_circle.dart';
import 'package:pathway/widgets/top_blob_painter.dart';
import 'package:pathway/widgets/sphere.dart';

class CurvyGradientBg extends StatelessWidget {
  final List<Widget> children;
  final bool showTopBlop;
  const CurvyGradientBg({
    super.key,
    required this.children,
    this.showTopBlop = true,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
            begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                AppColors.bgDark,
                Color(0xFF1F2A57),
                Color(0xFF3E55A6),
                AppColors.bgLight,
              ],
              stops: [0.0, 0.35, 0.70, 1.0],
            ),
          ),
        ),
        Positioned(
          top: -120,
          left: -80,
          child: SoftCircle(diameter: 250, colors: [Colors.white.withOpacity(0.25), Colors.transparent],
          ),
        ),
        Positioned(
          top: 80,
          right: -60,
          child: SoftCircle(diameter: 200, colors: [Colors.white.withOpacity(0.28), Colors.transparent],
        ),
          ),
        if (showTopBlop)
        Positioned(
          top: -80,
          left: -20,
          right: -20,
          child: SizedBox(
            height: 200,
            child: CustomPaint(painter: TopBlobPainter()),
          )
        ),
        const Positioned(top: 22, left: 20, child: Sphere(diameter: 62, dark: true)),
        const Positioned(top: 100, right: 34, child: Sphere(diameter: 56)),
        const Positioned(bottom: 120, left: 32, child: Sphere(diameter: 32)),
        const Positioned(bottom: 40, right: 26, child: Sphere(diameter: 70, dark: true)),
        ...children,
      ]
    );
  }
}
