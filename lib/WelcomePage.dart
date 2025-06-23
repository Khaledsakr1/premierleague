import 'package:flutter/material.dart';
import 'package:concentric_transition/page_view.dart';
import 'package:newss_app/Home_veiw.dart';
import 'package:newss_app/widgets/button.dart';

class Welcomepage extends StatelessWidget {
  Welcomepage({super.key});

  final data = [
    ItemData(
      title: "Arsenal",
      subtitle: "Send messages to your friends and family.",
      image: const AssetImage("assets/images/Arsenal_FC.svg.png"),
      backgroundColor: const Color.fromRGBO(0, 10, 56, 1),
      titleColor: Colors.red,
      subtitleColor: Colors.white,
    ),
    ItemData(
      title: "Chelsea",
      subtitle: "Connect with your friends through groups.",
      image: const AssetImage("assets/images/Chelsea_FC.svg.png"),
      backgroundColor: Colors.white,
      titleColor: const Color.fromRGBO(0, 10, 56, 1),
      subtitleColor: const Color.fromRGBO(0, 10, 56, 1),
    ),
    ItemData(
      title: "Manchester city",
      subtitle: "Get work done with your friends and be productive.",
      image: const AssetImage("assets/images/Manchester_City_FC_badge.svg.png"),
      backgroundColor: const Color.fromARGB(255, 6, 66, 76),
      titleColor: Colors.white,
      subtitleColor: Colors.white,
    ),
    ItemData(
      title: "Liverpool",
      subtitle: "Use advanced messaging features",
      image: const AssetImage("assets/images/Liverpool_FC.svg.png"),
      backgroundColor: Color(0xFF37003C),
      titleColor: Colors.red,
      subtitleColor: Colors.white,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        radius: 40,
        colors: data.map((e) => e.backgroundColor).toList(),
        itemCount: data.length,
        itemBuilder: (int index) {
          return ItemWidget(
            data: data[index],
            isLastPage: index == data.length - 1,
          );
        },
      ),
    );
  }
}

class ItemData {
  final String title;
  final String subtitle;
  final ImageProvider image;
  final Color backgroundColor;
  final Color titleColor;
  final Color subtitleColor;

  ItemData({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.backgroundColor,
    required this.titleColor,
    required this.subtitleColor,
  });
}

class ItemWidget extends StatelessWidget {
  const ItemWidget({required this.data, required this.isLastPage, super.key});

  final ItemData data;
  final bool isLastPage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 3),
              Flexible(flex: 20, child: Image(image: data.image)),
              const Spacer(flex: 1),
              Text(
                data.title,
                style: TextStyle(
                  color: data.titleColor,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
                maxLines: 1,
              ),
              const Spacer(flex: 1),
              Text(
                data.subtitle,
                style: TextStyle(color: data.subtitleColor, fontSize: 20),
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
              const Spacer(flex: 10),
              if (isLastPage)
                Button(
                  title: 'Let\'s Start....',
                  textColor: Colors.white,
                  backgroundColor: Color.fromARGB(255, 105, 1, 114),
                  ontap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Home_veiw(),
                      ),
                    );
                  },
                ),
            ],
          ),
        ),
      ],
    );
  } 
} 