import 'package:flutter/material.dart';
import 'package:newss_app/widgets/news_list_veiw.dart';

class CategoryCardsVeiwUp extends StatelessWidget {
  const CategoryCardsVeiwUp({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Color(0xFF37003C),
      body: NewsListVeiw(
        category: category,
      ),
    );
  }
}
