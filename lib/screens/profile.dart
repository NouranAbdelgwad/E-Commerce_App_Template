import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    double statusBar = MediaQuery.of(context).viewPadding.top;
    double height = MediaQuery.sizeOf(context).height - statusBar;
    double width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
              horizontal: width * 0.04, vertical: height * 0.07),
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    ClipOval(
                      child: Image.asset(
                        "assets/images/profile.jpg",
                        width: width * 0.35,
                        height: width * 0.35,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "John Dou",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    buildGestureDetector(
                      context,
                      icon: CupertinoIcons.person_circle,
                      text: "My Account",
                      routeName: 'edit',
                    ),
                    buildGestureDetector(
                      context,
                      icon: Icons.shopping_bag_outlined,
                      text: "My Orders",
                      routeName: 'my_orders',
                    ),
                    buildGestureDetector(
                      context,
                      icon: Icons.language_outlined,
                      text: "Languages Settings",
                      routeName: 'language',
                    ),
                    buildGestureDetector(
                      context,
                      icon: Icons.location_on_outlined,
                      text: "Shipping Address",
                      routeName: 'shipping_address',
                    ),
                    buildGestureDetector(
                      context,
                      icon: Icons.add_card_rounded,
                      text: "My Cards",
                      routeName: 'my_cards',
                    ),
                    buildGestureDetector(
                      context,
                      icon: Icons.settings_outlined,
                      text: "Settings",
                      routeName: 'settings',
                    ),
                    buildGestureDetector(
                      context,
                      icon: Icons.policy_outlined,
                      text: "Privacy Policy",
                      routeName: '/privacyPolicy',
                    ),
                    buildGestureDetector(
                      context,
                      icon: Icons.info_outline,
                      text: "FAQ",
                      routeName: '/faq',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildGestureDetector(BuildContext context,
      {required IconData icon,
      required String text,
      required String routeName}) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: const Offset(2, 2),
              blurRadius: 2,
              spreadRadius: 2,
              color: const Color.fromARGB(36, 158, 158, 158),
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(icon, size: 25),
                const SizedBox(width: 15),
                Text(text, style: const TextStyle(fontSize: 17)),
              ],
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: Colors.black54,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
