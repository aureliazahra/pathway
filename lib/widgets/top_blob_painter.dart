import 'package:flutter/material.dart';

class TopBlobPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();
    path.moveTo(0, size.height * 0.45);
    path.cubicTo(
      size.width * 0.25,
      size.height * 0.1,
      size.width * 0.6,
      0,
      size.width,
      size.height * 0.10,
    );
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.close();

    final paint = Paint()
      ..shader = const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color(0xFFE9EEFF), Color(0xFFC7D5FF), Color(0xFF9EB7FF)],
      ).createShader(Offset.zero & size)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 20);
    canvas.drawPath(path, paint);
  }
  
  @override
  bool shouldRepaint( CustomPainter oldDelegate) => false;
}



