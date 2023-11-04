import 'package:flutter/material.dart';
import 'package:profile/component/other/custum_appbar.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(56.0),
          child: CustomAppBar(
            text: "Order",
          )),
    );
  }
}
