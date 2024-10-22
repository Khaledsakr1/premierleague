import 'package:flutter/material.dart';
import 'package:newss_app/Home_veiw.dart';

void main() {
  
  runApp(const newsapp());
}

// ignore: camel_case_types
class newsapp extends StatelessWidget {
  const newsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home_veiw(),
    );
  }
}
