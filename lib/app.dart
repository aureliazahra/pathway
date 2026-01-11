import 'package:flutter/material.dart';
import 'package:pathway/features/goals/goal_form_page.dart';
import 'package:pathway/features/reflection/reflection_page.dart';
import 'features/auth/login_page.dart';
import 'features/home/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pathway',
      debugShowCheckedModeBanner: false,

      home: LoginPage(),
      // halaman pertama
      initialRoute: '/login',

      // rooting
      routes: {
        '/login': (context) =>  LoginPage(),
        '/home': (context) =>  HomePage(),
        '/goal': (context) =>  GoalFormPage(),
        '/reflection': (context) =>  ReflectionPage(),
      },
    );
  }
}