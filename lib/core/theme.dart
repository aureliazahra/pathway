import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF3A66FF);
  static const Color bgDark = Color(0xFF0E1630);
  static const Color bgMid = Color(0xFF2F3E78);
  static const Color bgLight = Color(0xFFA9BEFF);
  static const Color card = Colors.white;
  static const Color textDark = Color(0xFF1C1F2E);
  static const Color textSoft = Color(0xFF8087A2);
}

class AppTheme {
  static ThemeData get light => ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.bgDark,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primary,
        primary: AppColors.primary,
        brightness: Brightness.light,
        ),
        
      );
}
