import 'package:flutter/material.dart';
import 'package:newss_app/StartPage.dart';

void main() {
  runApp(const newsapp());
}

class newsapp extends StatelessWidget {
  const newsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartPage(),
    );
  }
}
