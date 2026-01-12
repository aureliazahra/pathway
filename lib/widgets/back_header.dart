import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BackHeader extends StatelessWidget {
  final VoidCallback? onTap;
  const BackHeader({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(colors: [Color(0xFF0B132A), Color(0xFF273360)], center: Alignment(-0.35, -0.35),
                )
              ),
            ),
            IconButton(onPressed: onTap, icon: const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white, size: 18),)
          ],
        ),
        const SizedBox(width: 16),
        Text('Back', style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 14)),
      ],
    );
  }
}
