import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomSlider extends StatelessWidget {
  CustomSlider({
    super.key,
    // required this.imageUrls,
  });

  //final List<String> imageUrls;
  final List<String> imageUrls = [
    "assets/image/Banner/1.jpg",
    "assets/image/Banner/2.jpg",
    "assets/image/Banner/7.avif",
    "assets/image/Banner/4.avif",
    "assets/image/Banner/10.avif",
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height * 0.18,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
      ),
      items: imageUrls.asMap().entries.map((entry) {
        //  final int index = entry.key;
        final String imageUrl = entry.value;

        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 6.0),
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.fill,
                  height: MediaQuery.of(context).size.height * 0.18,
                  width: double.infinity,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
