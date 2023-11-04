import 'package:flutter/material.dart';

class CustomSizeBox extends StatelessWidget {
  CustomSizeBox({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;

    return SizedBox(
      height: h * height,
    );
  }
}
