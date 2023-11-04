import 'package:flutter/material.dart';
import 'package:profile/component/other/custum_appbar.dart';

class Deals extends StatelessWidget {
  const Deals({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(56.0),
          child: CustomAppBar(
            text: "Deals",
          )),
    );
    ;
  }
}
