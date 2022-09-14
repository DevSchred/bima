import 'package:bima/User/tab_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: const Color.fromRGBO(22, 123, 173, 1),
          child: Column(children: [
            Container(
              height: 180,
              child: Image.asset('assets/images/logo.png'),
            ),
            Container(height: 625.2, child: const TabWidget()),
          ])),
    );
  }
}
