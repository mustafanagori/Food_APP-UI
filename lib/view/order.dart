import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:profile/component/Dashboard/favourit/favrout.dart';
import 'package:profile/component/other/custum_appbar.dart';

class Order extends StatelessWidget {
  const Order({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
          preferredSize: ui.Size.fromHeight(56.0),
          child: CustomAppBar(
            text: "My Favorites",
          )),
      body: Column(
        children: [
          FavoriteCard(
            path: "assets/image/category/zinger.jpeg",
            title: "Zinger Burger",
            price: 540,
            rating: 4.6,
          ),
          FavoriteCard(
            path: "assets/image/category/tikka.jpg",
            title: "Chicken Tikka",
            price: 650,
            rating: 4.9,
          ),
          FavoriteCard(
            path: "assets/image/category/sandwich.jpeg",
            title: "Chicken Sandwich",
            price: 540,
            rating: 4.9,
          ),
        ],
      ),
    );
  }
}
