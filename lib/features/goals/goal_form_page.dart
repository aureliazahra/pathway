import 'package:flutter/material.dart';

class GoalFormPage extends StatelessWidget {
  const GoalFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Goal Form Page')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/reflection');
          },
          child: Text("Go to reflection"),
        ),
      ),
    );
  }
}