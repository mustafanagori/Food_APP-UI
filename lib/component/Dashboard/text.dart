import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String txt;
  const CustomText({
    super.key,
    required this.txt,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: TextStyle(
          fontStyle: FontStyle.italic,
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Colors.black45),
    );
  }
}
