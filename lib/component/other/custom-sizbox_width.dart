import 'package:flutter/material.dart';

class CustomSizeBoxW extends StatelessWidget {
  CustomSizeBoxW({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;

    return SizedBox(
      height: w * width,
    );
  }
}
