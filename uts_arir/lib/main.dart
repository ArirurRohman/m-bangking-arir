import 'package:flutter/material.dart';

void main() {
  runApp(const MyBCAApp());
}

class MyBCAApp extends StatelessWidget {
  const MyBCAApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});