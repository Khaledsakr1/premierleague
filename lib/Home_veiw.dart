import 'package:flutter/material.dart';
import 'package:newss_app/widgets/category_list_veiw.dart';
import 'package:newss_app/widgets/news_list_veiw.dart';

// ignore: camel_case_types
class Home_veiw extends StatelessWidget {
  const Home_veiw({super.key ,});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Color(0xFF37003C),
      appBar: AppBar(
      backgroundColor: Color(0xFF37003C),
        centerTitle: true,
        elevation: 0,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Premier',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),

            Image(image: AssetImage('assets/images/pl-main-logo.png'),width: 45, height: 50,),

            Text('League',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 10),
            category_list_veiw(),
            SizedBox(height: 10),          
            Expanded(child: NewsListVeiw(category: 'Premier League')),
          ],
        ),
      ),
    );
  }
}
