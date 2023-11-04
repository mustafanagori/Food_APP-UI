import 'package:flutter/material.dart';
import 'package:profile/view/privacy.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});
  @override
  Widget build(BuildContext context) {
    List number = [2, 3, 6, 5, 6, 2];
    if (number.contains(number)) {
      print("yes");
    }
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                BgImage(h: h),
                SizedBox(
                  height: h * 0.12,
                ),
                Container(
                  height: h * 0.45,
                  width: double.infinity,
                  color: Colors.white24,
                  child: ListView(
                    children: [
                      const Tile(
                        text: "Account Information",
                        icon1: Icons.person_3_outlined,
                        icon2: Icons.arrow_forward_ios_sharp,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Privacy();
                          }));
                        },
                        child: const Tile(
                          text: "Privacy & Policy",
                          icon1: Icons.privacy_tip_outlined,
                          icon2: Icons.arrow_forward_ios_sharp,
                        ),
                      ),
                      const Tile(
                        text: "Feedback",
                        icon1: Icons.feedback_outlined,
                        icon2: Icons.arrow_forward_ios_sharp,
                      ),
                      const Tile(
                        text: "Help",
                        icon1: Icons.help_outline,
                        icon2: Icons.arrow_forward_ios_sharp,
                      ),
                      const Tile(
                        text: "setting",
                        icon1: Icons.settings,
                        icon2: Icons.arrow_forward_ios_sharp,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: h * 0.01,
                ),
                SizedBox(
                  height: 50,
                  width: w * 0.65,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange.shade500),
                      onPressed: () {},
                      child: const Text(
                        "Logout",
                        style: TextStyle(
                            fontSize: 19,
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                      )),
                )
              ],
            ),
            Positioned(
                left: w * 0.23,
                top: h * 0.13,
                child: Stack(
                  children: [
                    const CircleAvatar(
                      radius: 60,
                      backgroundImage:
                          AssetImage("assets/image/category/profile.jpg"),
                    ),
                    Positioned(
                        left: 100,
                        top: 78,
                        child: CircleAvatar(
                          backgroundColor: Colors.green.shade500,
                          radius: 10,
                        )),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

class BgImage extends StatelessWidget {
  const BgImage({
    super.key,
    required this.h,
  });

  final double h;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: h * 0.2,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)),
        image: DecorationImage(
          image: AssetImage('assets/image/category/cover.avif'),
          fit: BoxFit.cover,
        ),
        color: Color.fromARGB(255, 149, 176, 223),
      ),
    );
  }
}

class Tile extends StatelessWidget {
  final String text;
  final IconData icon1;
  final IconData icon2;

  const Tile({
    Key? key,
    required this.text,
    required this.icon1,
    required this.icon2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        text,
        style: TextStyle(color: Colors.black45),
      ),
      leading: Icon(
        icon1,
        size: 22,
        color: Colors.black45,
      ),
      trailing: Icon(
        icon2,
        color: Colors.black45,
        size: 18,
      ),
    );
  }
}
