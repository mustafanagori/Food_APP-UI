import 'package:flutter/material.dart';
import 'package:profile/component/Dashboard/text.dart';

class FavoriteCard extends StatelessWidget {
  const FavoriteCard({
    super.key,
    required this.title,
    required this.path,
    required this.price,
    required this.rating,
  });

  final String title;
  final String path;
  final double price;
  final double rating;

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: w * 0.05,
        vertical: h * 0.02,
      ),
      child: Stack(
        children: [
          Row(
            children: [
              Container(
                width: w * 0.2,
                color: Colors.red,
              ),
              Container(
                width: w * 0.7,
                height: h * 0.15,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.orange.shade400,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: w * 0.2,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(title),
                        Text("Price : ${price.toString()}/-"),
                        SizedBox(
                          height: h * 0.035,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange.shade400),
                              onPressed: () {},
                              child: const CustomText(txt: "Order Now")),
                        )
                      ],
                    ),
                    SizedBox(
                      width: w * 0.05,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Text(rating.toString()),
                            const Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 20,
                            )
                          ],
                        ),
                        SizedBox(
                          height: h * 0.02,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            left: 25,
            bottom: -65,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                height: h * 0.3,
                width: w * 0.3,
                image: AssetImage(path),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
