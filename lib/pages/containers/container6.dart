import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../utils/constants.dart';
import '../../widgets/product_cards.dart';

class Container6 extends StatefulWidget {
  const Container6({super.key});

  @override
  State<Container6> createState() => _Container6State();
}

class _Container6State extends State<Container6> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileContainer(),
      desktop: desktopContainer(),
    );
  }

  Widget mobileContainer() {
    return Container(
      padding: EdgeInsets.only(left: width!*0.08, right: width!*0.08, top: height!*0.01),
      color: Colors.white,
      height: height!*1.52,
      width: double.infinity,
      child: Column(
        children: [
          Text("The Product we work \nwith.", style: TextStyle(
              fontSize: width!/7.38,
              fontWeight: FontWeight.bold,
              height: 1.08
          )),
          SizedBox(height: height!*0.02,),
          Text("Lorem ipsum, dolor sit amet consectetur adipisicing elit. Iste minima mollitia veritatis it amet consectetur adipisicing elit rem! Repudiandae vel dolorem.",
            softWrap: true,
            style: TextStyle(
                fontSize: width!*0.039,
                color: Colors.grey.shade500
            ),),
          SizedBox(height: height!*0.03,),
          MobileProductCard(
            avatarColor: Colors.deepOrange.shade100,
            head: "Cross platform",
            subhead: "Elit esse cillum dolore eu fugiat nulla\npariatur",
            image: productPhoneLink,
          ),
          SizedBox(height: height!*0.01,),
          MobileProductCard(
            avatarColor: Colors.red.shade100,
            head: "Cloud server",
            subhead: "Elit esse cillum dolore eu fugiat nulla\npariatur",
            image: productCloud,
          ),
          SizedBox(height: height!*0.01,),
          MobileProductCard(
            avatarColor: Colors.deepPurpleAccent.shade100,
            head: "Pure javascript",
            subhead: "Elit esse cillum dolore eu fugiat nulla\npariatur",
            image: productBackPack,
          ),
        ],
      ),
    );
  }

  Widget desktopContainer() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 110, vertical: 70),
      height: height!*0.91,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: width! * 0.55,
                child: Text(
                  "The Product we\nwork with.",
                  style: TextStyle(
                      fontSize: width! / 14.28,
                      fontWeight: FontWeight.bold,
                      height: 1.18),
                ),
              ),
              Expanded(
                child: Text(
                    "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Iste minima mollitia veritatis it amet consectetur adipisicing elit rem! Repudiandae vel dolorem.",
                  style: TextStyle(
                      fontSize: width!*0.016,
                      color: Colors.grey.shade500,
                      wordSpacing: 2
                  ),
                  softWrap: true,
                ),
              )
            ],
          ),
          SizedBox(height: height!*0.1,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DeskTopProductCard(
                avatarColor: Colors.deepOrange.shade100,
                head: "Cross platform",
                subhead: "Elit esse cillum dolore eu fugiat nulla\npariatur",
                image: productPhoneLink,
                active: false,
              ),
              DeskTopProductCard(
                avatarColor: Colors.red.shade100,
                head: "Cloud server",
                subhead: "Elit esse cillum dolore eu fugiat nulla\npariatur",
                image: productCloud,
                active: true,
              ),
              DeskTopProductCard(
                avatarColor: Colors.deepPurpleAccent.shade100,
                head: "Pure javascript",
                subhead: "Elit esse cillum dolore eu fugiat nulla\npariatur",
                image: productBackPack,
                active: false,
              ),
            ],
          )
        ],
      ),
    );
  }
}
