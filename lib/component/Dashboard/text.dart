import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String txt;
  final Color color;

  const CustomText({
    Key? key,
    required this.txt,
    this.color = Colors.white, // Set a default value
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: TextStyle(
        fontStyle: FontStyle.italic,
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: color,
      ),
    );
  }
}
