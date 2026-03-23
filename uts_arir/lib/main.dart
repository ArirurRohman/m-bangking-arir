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
  class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF005DAA), // Warna biru BCA
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                // Header Section
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'myBCA',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      Row(
                        children: const [
                          Icon(Icons.settings, color: Colors.white),
                          SizedBox(width: 15),
                          Icon(Icons.logout, color: Colors.white),
                        ],
                      ),
                    ],
                  ),
                ),