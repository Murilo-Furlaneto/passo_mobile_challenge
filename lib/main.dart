import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: PassoApp()));
}

class PassoApp extends StatelessWidget {
  const PassoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Passo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: SafeArea(
          child: Center(child: Text('Passo — comece pela atividade 01')),
        ),
      ),
    );
  }
}
