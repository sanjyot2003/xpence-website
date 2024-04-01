import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_website/utils/constants.dart';
import 'package:flutter_website/widgets/head_description_column.dart';
import 'package:flutter_website/widgets/mobile_head_desc_column.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container5 extends StatefulWidget {
  const Container5({super.key});

  @override
  State<Container5> createState() => _Container5State();
}

class _Container5State extends State<Container5> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileContainer(),
      desktop: desktopContainer(),
    );
  }

  Widget mobileContainer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width!*0.03,),
      color: Colors.white,
      height: height!*0.93,
      width: double.infinity,
      child: Column(
        children: [
          Center(
            child: SvgPicture.asset(
              illustration_4,
              height: height!*0.33,
            ),
          ),
          SizedBox(height: height!*0.05,),
          TitleSubtitleColumnMobile(
            subhead: "USE ANYTIME",
            head: "Use anytime\nwhen you\nneed",
            desc:
            "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Iste nulla minima mollitia veritatis it amet consectetur adipisicing elit rem! Repudiandae vel dolorem.",
          ),
        ],
      ),
    );
  }

  Widget desktopContainer() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 110, vertical: 50),
      padding: const EdgeInsets.only(top: 30, bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TitleSubtitleColumn(
            subhead: "USE ANYTIME",
            head: "Use anytime\nwhen you\nneed",
            desc:
            "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Iste nulla minima mollitia veritatis it amet consectetur adipisicing elit rem! Repudiandae vel dolorem.",
          ),
          SizedBox(width: width!*0.08,),
          Center(
            child: SvgPicture.asset(
              illustration_4,
              height: height!*0.55,
            ),
          )
        ],
      ),
    );
  }
}
