import 'package:flutter/material.dart';
import 'package:pathway/app.dart';
import 'package:pathway/core/theme.dart';
import 'package:pathway/features/auth/login_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.light;
    return MaterialApp(
      title: 'Pathway',
      debugShowCheckedModeBanner: false,
      theme: theme,
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignupPage(),
      },
    );
  }
}
