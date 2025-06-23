import 'package:flutter/material.dart';
import 'dart:async';

import 'package:newss_app/WelcomePage.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPage();
}

class _StartPage extends State<StartPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>  Welcomepage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF37003C),
      body: Center(
        child: Image.asset(
          'assets/images/Premier League.gif',
          fit: BoxFit.cover,
          width: 300,
          height: 297,
        ),
      ),
    );
  }
}
