import 'dart:async';
import 'package:base_tutorial_app/main.dart';
import 'package:flutter/material.dart';
import 'main.dart'; // HomePage burada varsayıyorum

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    _navigate();
  }

  void _navigate() async {
    await Future.delayed(const Duration(seconds: 2));

    if (!mounted) return;

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const MyHomePage(title: '',)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Image.asset(
              "assets/logo.jpeg",
              width: 220,
            ),

            const SizedBox(height: 20),

            const Text(
              "Base Tutorial App",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 139, 58, 183),
              ),
            ),

            const SizedBox(height: 20),

            const CircularProgressIndicator(color: Colors.deepPurple),
          ],
        ),
      ),
    );
  }
}