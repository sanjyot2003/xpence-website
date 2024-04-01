import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_website/widgets/feedback_card.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../utils/constants.dart';

class Container8 extends StatefulWidget {
  const Container8({super.key});

  @override
  State<Container8> createState() => _Container8State();
}

class _Container8State extends State<Container8> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileContainer(),
      desktop: desktopContainer(),
    );
  }

  Widget mobileContainer() {
    return Container(
      padding: EdgeInsets.only(left: width!*0.05, right: width!*0.05, bottom: height! * 0.02, top: height! * 0.03),
      color: Colors.white,
      height: height! * 0.74,
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: width!*0.08, right: width!*0.08,),
            child: Text("We have millions of\nbest wishers",
                style: TextStyle(
                    fontSize: width! / 7.38,
                    fontWeight: FontWeight.bold,
                    height: 1.08)),
          ),
          SizedBox(height: height!*0.08,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                MobileFeedbackCard(
                  color: Colors.deepOrangeAccent,
                  name : "Cameron Williamson,",
                  person: person1,
                ),
                SizedBox(
                  width: width! * 0.03,
                ),
                MobileFeedbackCard(
                  color: Colors.blueAccent,
                  name : "Alis Anderson,",
                  person: person4,
                ),
                SizedBox(
                  width: width! * 0.03,
                ),
                MobileFeedbackCard(
                  color: Colors.yellowAccent,
                  name : "Arya Stark,",
                  person: person2,
                ),
                SizedBox(
                  width: width! * 0.03,
                ),
                MobileFeedbackCard(
                  color: Colors.lightBlueAccent,
                  name : "Jon  Snow,",
                  person: person5,
                ),
                SizedBox(
                  width: width! * 0.03,
                ),
                MobileFeedbackCard(
                  color: Colors.brown,
                  name : "Denerys Targeryan,",
                  person: person3,
                ),
                SizedBox(
                  width: width! * 0.03,
                ),
                MobileFeedbackCard(
                  color: Colors.redAccent,
                  name : "Brandon Stark,",
                  person: person6,
                ),
                SizedBox(
                  width: width! * 0.03,
                ),
                MobileFeedbackCard(
                  color: Colors.lightGreenAccent,
                  name : "Sansa Stark,",
                  person: person7,
                ),
                SizedBox(
                  width: width! * 0.03,
                ),
                MobileFeedbackCard(
                  color: Colors.cyanAccent,
                  name : "Jorah de Andals,",
                  person: person8,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget desktopContainer() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
      height: height! * 0.93,
      width: double.infinity,
      child: Column(
        children: [
          Text(
            "We have millions of\nbest wishers",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: width! / 15.38,
                fontWeight: FontWeight.bold,
                height: 1.18),
          ),
          SizedBox(
            height: height! * 0.1,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DesktopFeedbackCard(
                  color: Colors.deepOrangeAccent,
                  name : "Cameron Williamson,",
                  person: person1,
                ),
                SizedBox(
                  width: width! * 0.03,
                ),
                DesktopFeedbackCard(
                  color: Colors.blueAccent,
                  name : "Alis Anderson,",
                  person: person4,
                ),
                SizedBox(
                  width: width! * 0.03,
                ),
                DesktopFeedbackCard(
                  color: Colors.yellowAccent,
                  name : "Arya Stark,",
                  person: person2,
                ),
                SizedBox(
                  width: width! * 0.03,
                ),
                DesktopFeedbackCard(
                  color: Colors.lightBlueAccent,
                  name : "Jon  Snow,",
                  person: person5,
                ),
                SizedBox(
                  width: width! * 0.03,
                ),
                DesktopFeedbackCard(
                  color: Colors.brown,
                  name : "Denerys Targeryan,",
                  person: person3,
                ),
                SizedBox(
                  width: width! * 0.03,
                ),
                DesktopFeedbackCard(
                  color: Colors.redAccent,
                  name : "Brandon Stark,",
                  person: person6,
                ),
                SizedBox(
                  width: width! * 0.03,
                ),
                DesktopFeedbackCard(
                  color: Colors.lightGreenAccent,
                  name : "Sansa Stark,",
                  person: person7,
                ),
                SizedBox(
                  width: width! * 0.03,
                ),
                DesktopFeedbackCard(
                  color: Colors.cyanAccent,
                  name : "Jorah de Andals,",
                  person: person8,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
