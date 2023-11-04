import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profile/controller/navigation_controller.dart';
import 'package:profile/view/deals.dart';
import 'package:profile/view/home.dart';
import 'package:profile/view/order.dart';

class MyNavigation extends StatefulWidget {
  MyNavigation({super.key});

  @override
  State<MyNavigation> createState() => _MyNavigationState();
}

class _MyNavigationState extends State<MyNavigation> {
  NavigatorController bottomNavigationContoller =
      Get.put(NavigatorController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: WillPopScope(
          onWillPop: () async {
            return false;
          },
          child: IndexedStack(
            index: bottomNavigationContoller.selectedIndex.value,
            children: const [
              Home(),
              Order(),
              Deals(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            selectedItemColor: Colors.orange.shade300,
            unselectedItemColor: Colors.black54,
            showUnselectedLabels: true,
            showSelectedLabels: true,
            currentIndex: bottomNavigationContoller.selectedIndex.value,
            onTap: bottomNavigationContoller.changeIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: "Favorite",
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag),
                label: "Order",
                backgroundColor: Colors.white,
              ),
            ]),
      ),
    );
  }
}
