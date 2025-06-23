import 'package:flutter/material.dart';
import 'package:newss_app/models/category_model.dart';
import 'package:newss_app/widgets/category_cards.dart';

// ignore: camel_case_types
class category_list_veiw extends StatelessWidget {
  const category_list_veiw({super.key});
  final List<CategoryModel> categories = const 
  [
     CategoryModel(image:'assets/images/Liverpool_FC.svg.png' , categoryName:'Liverpool'),
     CategoryModel(image:'assets/images/Manchester_City_FC_badge.svg.png' , categoryName:'Mancity'),
     CategoryModel(image:'assets/images/Arsenal_FC.svg.png' , categoryName:'Arsenal FC'),
     CategoryModel(image:'assets/images/Manchester_United_FC_crest.svg.png' , categoryName:'ManUnited'),
     CategoryModel(image:'assets/images/Chelsea_FC.svg.png' , categoryName:'Chelsea'),
     CategoryModel(image:'assets/images/Tottenham_Hotspur.svg.png' , categoryName:'Tottenham'),
     CategoryModel(image:'assets/images/Newcastle_United_Logo.svg.png' , categoryName:'NewCastle United'),
     CategoryModel(image:'assets/images/Aston_Villa_FC_new_crest.svg.png' , categoryName:'AstonVilla'),
     CategoryModel(image:'assets/images/Brighton_and_Hove_Albion_FC_crest.svg.png' , categoryName:'Brighton'),
     CategoryModel(image:'assets/images/Fulham_FC_(shield).svg.png' , categoryName:'Fulham'),
     CategoryModel(image:'assets/images/AFC_Bournemouth_(2013).svg.png' , categoryName:'Bournemouth'),
     CategoryModel(image:'assets/images/Nottingham_Forest_F.C._logo.svg.png' , categoryName:'Nottingham Forest'),
     CategoryModel(image:'assets/images/Brentford_FC_crest.svg.png' , categoryName:'Brentford'),
     CategoryModel(image:'assets/images/Leicester_City_crest.svg.png' , categoryName:'Leicester City'),
     CategoryModel(image:'assets/images/West_Ham_United_FC_logo.svg.png' , categoryName:'WestHam United'),
     CategoryModel(image:'assets/images/Everton_FC_logo.svg.png' , categoryName:'Everton'),
     CategoryModel(image:'assets/images/Ipswich_Town.svg.png' , categoryName:'Ipswich Town'),
     CategoryModel(image:'assets/images/Crystal_Palace_FC_logo_(2022).svg.png' , categoryName:'Crystal palace'),
     CategoryModel(image:'assets/images/FC_Southampton.svg.png' , categoryName:'Southampton FC'),
     CategoryModel(image:'assets/images/Wolverhampton_Wanderers_FC_crest.svg.png' , categoryName:'Wolverhampton'),  
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return category_cards(category: categories [index]);
          }),
    );
  }
}
