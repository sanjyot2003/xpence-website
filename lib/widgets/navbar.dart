import 'package:flutter/material.dart';
import 'package:flutter_website/utils/constants.dart';
import 'package:flutter_website/utils/styles.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileNavbar(),
      desktop: DeskTopNavbar(),
    );
  }

  Widget MobileNavbar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: (){},
          ),
          navLogo()
        ],
      ),
    );
  }

  Widget DeskTopNavbar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 110, vertical: 10),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          navLogo(),
          Row(
            children: [
              navButton("Features"),
              navButton("About Us"),
              navButton("Pricing"),
              navButton("Feedback"),
            ],
          ),
          Container(
            height: 45,
            child: ElevatedButton(
              style: borderedButtonStyle(),
              child: const Text("Request a Demo"),
              onPressed: (){},
            ),
          )
      ],
    ),
    );
  }

  Widget navButton(String text) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: TextButton(
        child: Text(text,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 18
        ),),
        onPressed: (){},
      ),
    );
  }

  Widget navLogo() {
    return Container(
      width: 110,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(logo)
        )
      ),
    );
  }
}
