import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: w * 0.03),
        child: SizedBox(
          width: w * 0.95,
          height: h * 0.06,
          child: TextField(
            cursorColor: Colors.orange.shade300,
            decoration: InputDecoration(
              hintText: "Serach",
              hintStyle: const TextStyle(color: Colors.black45),
              border: InputBorder.none,
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.black45,
              ),
              contentPadding: EdgeInsets.only(bottom: h * 0.0015),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  color: Colors.black45,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  color: Colors.black45,
                ),
              ),
            ),
          ),
        ));
  }
}
