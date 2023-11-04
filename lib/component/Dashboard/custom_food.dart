import 'package:flutter/material.dart';

class CustomFood extends StatelessWidget {
  const CustomFood({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FoodCategoery(
            assetPath: "assets/image/category/pizza.png",
            txt: "Burger",
          ),
          FoodCategoery(
            assetPath: "assets/image/category/fish.png",
            txt: "Fish",
          ),
          FoodCategoery(
            assetPath: "assets/image/category/burger.png",
            txt: "Burger",
          ),
          FoodCategoery(
            assetPath: "assets/image/category/meat.png",
            txt: "Meat",
          ),
          FoodCategoery(
            assetPath: "assets/image/category/leg.png",
            txt: "Leg",
          ),
          //sfas
          FoodCategoery(
            assetPath: "assets/image/category/tea.png",
            txt: "Tea",
          ),
          FoodCategoery(
            assetPath: "assets/image/category/juice.png",
            txt: "Juice",
          ),
          FoodCategoery(
            assetPath: "assets/image/category/ice1.png",
            txt: "Icecream",
          ),
        ],
      ),
    );
  }
}

class FoodCategoery extends StatelessWidget {
  final String assetPath;
  final String txt;

  const FoodCategoery({
    required this.assetPath,
    required this.txt,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: w * 0.015),
      child: Container(
        height: h * 0.09,
        width: w * 0.2,
        decoration: BoxDecoration(
          color: Colors.orange.shade100,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Image.asset(assetPath), // Use the provided asset path
            Text(
              txt,
              style: const TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                  fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
