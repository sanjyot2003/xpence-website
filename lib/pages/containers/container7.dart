import 'package:flutter/material.dart';
import 'package:flutter_website/widgets/plan_card.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../utils/constants.dart';

class Container7 extends StatelessWidget {
  const Container7({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileContainer(),
      desktop: desktopContainer(),
    );
  }

  Widget mobileContainer() {
    return Container(
      padding: EdgeInsets.only(left: width!*0.08, right: width!*0.08, bottom: height!*0.02),
      color: Colors.white,
      height: height!*2,
      width: double.infinity,
      child: Column(
        children: [
          Text(
            "Choose your flexible plan.",
            style: TextStyle(
                fontSize: width!/7.38,
                fontWeight: FontWeight.bold,
                height: 1.08
            ),
          ),
          SizedBox(height: height!*0.06,),
          MobilePlanCard(
            active: false,
            image: starterPlan,
            head: "Starter Plan",
            price: "99",
          ),
          SizedBox(height: height!*0.03,),
          MobilePlanCard(
            active: false,
            image: silverPlan,
            head: "Silver Plan",
            price: "199",
          ),
          SizedBox(height: height!*0.03,),
          MobilePlanCard(
            active: false,
            image: diamondPlan,
            head: "Diamond Plan",
            price: "299",
          ),
        ],
      ),
    );
  }

  Widget desktopContainer() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 110, vertical: 70),
      height: height!*0.93,
      width: double.infinity,
      child: Column(
        children: [
          Text(
            "Choose your flexible plan.",
            style: TextStyle(
                fontSize: width! / 19.28,
                fontWeight: FontWeight.bold,
                height: 1.18),
          ),
          SizedBox(height: height!*0.1,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DeskTopPlanCard(
                active: false,
                image: starterPlan,
                head: "Starter Plan",
                price: "99",
              ),
              DeskTopPlanCard(
                active: false,
                image: silverPlan,
                head: "Silver Plan",
                price: "199",
              ),
              DeskTopPlanCard(
                active: false,
                image: diamondPlan,
                head: "Diamond Plan",
                price: "299",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
