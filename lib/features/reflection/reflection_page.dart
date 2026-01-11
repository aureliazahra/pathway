import 'package:flutter/material.dart';

class ReflectionPage extends StatelessWidget {
  const ReflectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Daily Reflection')),
      body: Padding(
        padding: const EdgeInsets.all(24.0) , 
        child: Column(
          children: [
        const TextField(
            maxLines: 5,
            decoration: InputDecoration(
              labelText: 
              "What did you learn today?",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              
              Navigator.pop(context);
            },
            child: const Text("Save Reflection"),
          ),
        ],
      )
        ),
      );

  }
}
