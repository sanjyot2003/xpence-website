import 'package:flutter/material.dart';
import 'package:flutter_website/utils/constants.dart';
import 'package:flutter_website/utils/styles.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Container1 extends StatefulWidget {
  const Container1({super.key});

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileContainer1(),
      desktop: deskTopContainer1(),
    );
  }

  Widget mobileContainer1() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: width!*0.03, vertical: height!*0.02),
      child: Column(
        children: [
          Container(
            child: SvgPicture.asset(
              illustration_1,
              height: height!*0.35,
            ),
          ),
          SizedBox(height: height!*0.08),
          Text("Track your \nExpenses to \nSave Money", style: TextStyle(
              fontSize: width!/7.38,
              fontWeight: FontWeight.bold,
              height: 1.18
          ),),
          SizedBox(height: height!*0.03),
          Text("Helps you to organize your income and expenses",
            style: TextStyle(
                fontSize: width!*0.037,
                color: Colors.grey.shade500
            ),),
          SizedBox(height: height!*0.03),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 45,
                child: ElevatedButton.icon(
                  label: const Text("Try free demo"),
                  onPressed: (){},
                  icon: const Icon(Icons.keyboard_arrow_down_rounded),

                  style: borderlessButtonStyle(),
                ),
              ),
              const SizedBox(width: 10,),
              Text("- Web, iOs and Android", style:
              TextStyle(
                  color: Colors.grey.shade500,
                  fontSize: width!*0.037),)
            ],
          ),
          SizedBox(height: height!*0.03),
        ],
      ),
    );
  }

  Widget deskTopContainer1() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 110, vertical: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Track your \nExpenses to \nSave Money", style: TextStyle(
                  fontSize: width!/16.8,
                  fontWeight: FontWeight.bold,
                  height: 1.18
                ),),
                const SizedBox(height: 20,),
                Text("Helps you to organize your income and expenses",
                style: TextStyle(
                  fontSize: width!*0.014,
                  color: Colors.grey.shade500
                ),),
                const SizedBox(height: 30,),
                Row(
                  children: [
                    SizedBox(
                      height: 45,
                      child: ElevatedButton.icon(
                        label: const Text("Try free demo"),
                        onPressed: (){},
                        icon: const Icon(Icons.keyboard_arrow_down_rounded),

                        style: borderlessButtonStyle(),
                      ),
                    ),
                    SizedBox(width: width!*0.02,),
                    Text("- Web, iOs and Android", style:
                      TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: width!*0.015),)
                  ],
                ),
                SizedBox(height: height!*0.16,)
              ],
            ),
          )),
          Expanded(child: Center(
            child: SvgPicture.asset(
                illustration_1,
              height: height!*0.65,
            ),
          ))
        ],
      ),
    );
  }
}
