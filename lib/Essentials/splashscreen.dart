import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: Image.asset('assets/images/splashcsreen.jpg').image,
      )),
    );
  }

  void startTimer() {
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, 'landing');
    });
  }
}
