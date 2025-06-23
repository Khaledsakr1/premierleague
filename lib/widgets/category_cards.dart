import 'package:flutter/material.dart';
import 'package:newss_app/models/category_model.dart';
import 'package:newss_app/widgets/category_cards_veiw_up.dart';

// ignore: camel_case_types
class category_cards extends StatelessWidget {
  const category_cards({super.key, required this.category});

  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryCardsVeiwUp(category: category.categoryName);
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(category.image),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          width: 60,
        ),
      ),
    );
  }
}

// If you want to add text for clubs but it into upper container
/*child:Center(
                    child: Text(
                        category.categoryName,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
                          color: Color.fromARGB(255, 42, 17, 207),
                        ),
                      ),
                  ),
                  */