import 'package:flutter/material.dart';

// С этой функции начинается работа приложения.
void main() {
  runApp(const PipApp());
}

class PipApp extends StatelessWidget {
  const PipApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'pip',
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(useMaterial3: true),
    home: Scaffold(
      appBar: AppBar(title: const Text('pip')),
      body: const Center(child: Text('Главная')),
    ),
  );
}
