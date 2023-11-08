import 'package:flutter/material.dart';
import 'package:profile/component/other/custum_appbar.dart';

class Deals extends StatefulWidget {
  const Deals({super.key});

  @override
  State<Deals> createState() => _DealsState();
}

class _DealsState extends State<Deals> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(56.0),
            child: CustomAppBar(
              text: "Order Details",
            )),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                  flex: 4,
                  child: ListView(
                    children: [
                      // List of Order
                      CardItem(
                        path: "assets/image/category/zinger.jpeg",
                        count: 1,
                        title: "Zinger Burger",
                        desc: "without cheez ",
                        price: 100.0,
                      ),
                      CardItem(
                        path: "assets/image/category/tikka.jpg",
                        count: 3,
                        title: "Chicken Tikkah",
                        desc: "without salad ",
                        price: 160.0,
                      ),
                      CardItem(
                        path: "assets/image/category/sandwich.jpeg",
                        count: 2,
                        title: "Chicken sandwich",
                        desc: "without cheez ",
                        price: 120.0,
                      ),

                      CardItem(
                        path: "assets/image/category/zinger.jpeg",
                        count: 1,
                        title: "Zinger Burger",
                        desc: "without cheez ",
                        price: 100.0,
                      ),
                    ],
                  )),
              const SummaryText(),
              // bill Deatils
              const BillDetails(),
              // Order Now Button
              const OrderButton()
            ],
          ),
        ));
  }
}

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
    required this.path,
    required this.title,
    required this.desc,
    required this.count,
    required this.price,
  });
  final String path;
  final String title;
  final String desc;
  final int count;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 3),
        decoration: BoxDecoration(
            //border:
            //  Border.all(color: Colors.orange.shade200),
            color: Colors.white,
            borderRadius: BorderRadius.circular(5)),
        height: 70,
        child: Row(
          children: [
            // image column
            Expanded(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child:
                        Image(height: 90, width: 90, image: AssetImage(path)),
                  ),
                )),

            // Data Column//
            Expanded(
                flex: 5,
                child: Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text3(
                          text: title,
                          color: Colors.black,
                        ),
                        Text3(
                          text: desc,
                          mysize: 12,
                        ),
                        Row(
                          children: [
                            Container(
                              color: Colors.black26,
                              child: const Icon(
                                Icons.remove,
                                size: 15,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 11,
                            ),
                            Text(count.toString()),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              color: Colors.black26,
                              child: const Icon(
                                Icons.add,
                                size: 15,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ]),
                )),

            // price and icon column
            Expanded(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Icon(
                        Icons.cancel_outlined,
                        color: Colors.black45,
                      ),
                      Text3(text: "PKR: ${price}")
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class SummaryText extends StatelessWidget {
  const SummaryText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.topLeft,
      child: Text(
        "Summary",
        style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
      ),
    );
  }
}

class OrderButton extends StatelessWidget {
  const OrderButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          style:
              ElevatedButton.styleFrom(backgroundColor: Colors.amber.shade700),
          onPressed: () {},
          child: const Text(
            "Order Now",
            style: TextStyle(color: Colors.white),
          )),
    );
  }
}

class BillDetails extends StatelessWidget {
  const BillDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      color: Colors.white,
      child: const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text2(
                text: "Sub Total",
              ),
              Text2(text: "920.0")
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text2(
                text: "Discount Fee",
              ),
              Text2(text: "100.50")
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text2(
                text: "Total Amount",
              ),
              Text2(text: "1020.50")
            ],
          ),
          Divider(),
        ],
      ),
    ));
  }
}

class Text2 extends StatelessWidget {
  const Text2({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.black45,
        fontSize: 14,
      ),
    );
  }
}

class Text3 extends StatelessWidget {
  const Text3({
    Key? key,
    required this.text,
    this.mysize = 14.0,
    this.color = Colors.black45,
  });
  final String text;
  final double mysize;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color, // Use the 'color' parameter, not 'Colors.color'
        fontSize: mysize,
      ),
    );
  }
}


// GestureDetector(
//         onTap: () {
//           setState(() {
//             selected = !selected;
//           });
//         },
//         child: Center(
//           child: AnimatedContainer(

//             duration: const Duration(seconds: 2),
//             curve: Curves.fastLinearToSlowEaseIn,
//             child: selected
//                 ? Icon(
//                     Icons.pause,
//                     size: 60,
//                   )
//                 : Icon(
//                     Icons.play_circle,
//                     size: 60,
//                   ),
//           ),
//         ),
//       ),
