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
                            const Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 244, 221, 22),
                              size: 20,
                            ),
                            Text(
                              rating.toString(),
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54),
                            ),
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
            left: w * 0.07,
            top: h * -0.07,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                height: h * 0.3,
                width: w * 0.28,
                image: AssetImage(path),
              ),
            ),
          ),
          // Positioned(
          //   left: w * 0.09,
          //   bottom: h * 0.02,
          //   child: Container(
          //     decoration:
          //         BoxDecoration(borderRadius: BorderRadius.circular(20)),
          //     height: h * 0.1,
          //     width: w * 0.25,
          //     child: Image(
          //       // height: h * 0.1,
          //       //width: w * 0.3,
          //       fit: BoxFit.fill,
          //       image: AssetImage(path),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
