import 'package:flutter/material.dart';
import 'package:profile/component/Dashboard/category_row.dart';
import 'package:profile/component/Dashboard/custom_food.dart';
import 'package:profile/component/Dashboard/custum_slider.dart';
import 'package:profile/component/Dashboard/search_field.dart';
import 'package:profile/component/Dashboard/text.dart';
import 'package:profile/component/other/custom_sizebox.dart';
import 'package:profile/component/other/custum_appbar.dart';
import 'package:profile/view/profile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
        drawer: const Drawer(
          child: Profile(),
        ),
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(56),
            child: CustomAppBar(
              text: "Dashboard",
            )),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomSizeBox(height: 0.020),
              const SearchField(),
              CustomSizeBox(height: 0.020),
              const CustomText(
                txt: "Deals & Discount",
                color: Colors.black54,
              ),
              CustomSizeBox(height: 0.020),
              CustomSlider(),
              CustomSizeBox(height: 0.020),
              const CustomText(
                txt: "Food Category",
                color: Colors.black54,
              ),
              CustomSizeBox(height: 0.020),
              const CustomFood(),
              CustomSizeBox(height: 0.020),
              const CustomText(
                txt: "Special Food",
                color: Colors.black54,
              ),
              CustomSizeBox(height: 0.020),
              const CategoryRow(),
              CustomSizeBox(height: 0.020),
            ],
          ),
        ));
  }
}
