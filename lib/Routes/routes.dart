import 'package:bima/Essentials/navigation.dart';
import 'package:bima/User/login_widget.dart';
import 'package:bima/User/sign_up_widget.dart';
import 'package:flutter/material.dart';

import '../Home/home.dart';
import '../User/landing.dart';

const String login = 'login';
const String register = 'register';
const String home = 'home';
const String navigation = 'navigation';
const String landing = 'landing';

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case login:
      return MaterialPageRoute(builder: (context) => const LoginWidget());
    case register:
      return MaterialPageRoute(builder: (context) => const Registration());
    case landing:
      return MaterialPageRoute(builder: (context) => const LandingPage());
    case home:
      return MaterialPageRoute(builder: (_) => const Home());
    case navigation:
      return MaterialPageRoute(builder: (_) => const Dashboard());
    default:
      throw ('this route does not exist');
  }
}
