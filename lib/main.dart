import 'package:bima/Essentials/navigation.dart';
import 'package:bima/Essentials/splashscreen.dart';
import 'package:bima/User/login_widget.dart';
import 'package:bima/User/sign_up_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'Home/home.dart';
import 'User/landing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const SplashScreen(),
          debugShowCheckedModeBanner: false,
          onGenerateRoute: (settings) {
            if (settings.name == 'login') {
              return MaterialPageRoute(builder: (_) => const LoginWidget());
            }
            if (settings.name == 'register') {
              return MaterialPageRoute(builder: (_) => const Registration());
            }
            if (settings.name == 'landing') {
              return MaterialPageRoute(builder: (_) => const LandingPage());
            }
            if (settings.name == 'home') {
              return MaterialPageRoute(builder: (_) => const Home());
            }
            if (settings.name == 'navigation') {
              return MaterialPageRoute(builder: (_) => const Dashboard());
            }
            return null;
          });
    });
  }
}
