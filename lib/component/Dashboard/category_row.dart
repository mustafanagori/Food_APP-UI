import 'package:flutter/material.dart';
import 'package:profile/component/Dashboard/text.dart';

class CategoryRow extends StatelessWidget {
  const CategoryRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SpecialFood(path: "assets/image/category/zinger.jpeg", txt: "Burger"),
          SpecialFood(
              path: "assets/image/category/sandwich.jpeg", txt: "sandwich"),
          SpecialFood(path: "assets/image/category/tikka.jpg", txt: "Tikkah"),
          SpecialFood(path: "assets/image/category/roll.webp", txt: "Roll"),
        ],
      ),
    );
  }
}

class SpecialFood extends StatelessWidget {
  const SpecialFood({
    super.key,
    required this.txt,
    required this.path,
  });

  final String txt;
  final String path;

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        width: w * 0.40,
        height: h * 0.16,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image(
                image: AssetImage(path),
                width: w * 0.40,
                height: h * 0.12,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: h * 0.005,
            ),
            CustomText(txt: txt),
          ],
        ),
      ),
    );
  }
}
// Padding(
//             padding: const EdgeInsets.all(4.0),
//             child: Container(
//               width: w * 0.40,
//               height: h * 0.14,
//               decoration: BoxDecoration(
//                   color: Colors.orange.shade200,
//                   borderRadius: BorderRadius.circular(20)),
//               child: Column(
//                 children: [
//                   SizedBox(
//                     height: h * 0.005,
//                   ),
//                   CustomText(txt: "Famous Product")
//                 ],
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(4.0),
//             child: Container(
//               width: w * 0.40,
//               height: h * 0.14,
//               decoration: BoxDecoration(
//                   color: Colors.orange.shade200,
//                   borderRadius: BorderRadius.circular(20)),
//               child: Column(
//                 children: [
//                   SizedBox(
//                     height: h * 0.005,
//                   ),
//                   CustomText(txt: "Offer Product")
//                 ],
//               ),
//             ),
//           ),