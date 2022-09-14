import 'package:bima/User/login_widget.dart';
import 'package:bima/User/sign_up_widget.dart';
import 'package:flutter/material.dart';

class TabWidget extends StatefulWidget {
  const TabWidget({super.key});

  @override
  State<TabWidget> createState() => _TabWidgetState();
}

class _TabWidgetState extends State<TabWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromRGBO(22, 123, 173, 1),
            bottom: const TabBar(indicatorColor: Colors.white, tabs: [
              Tab(text: 'Login'),
              Tab(text: 'Sign Up'),
            ]),
          ),
          body: const TabBarView(
            children: [LoginWidget(), Registration()],
          ),
        ));
  }
}
