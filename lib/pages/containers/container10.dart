import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_website/utils/constants.dart';
import 'package:flutter_website/utils/styles.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container10 extends StatelessWidget {
  const Container10({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileContainer(),
      desktop: desktopContainer(),
    );
  }

  Widget mobileContainer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width!*0.13, vertical: height!*0.03),
      height: height!*0.84,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: height!*0.03),
            height: height!*0.06,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(logo), fit: BoxFit.contain)
            ),
          ),
          SizedBox(height: height!*0.05,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "LINKS",
                    style: TextStyle(
                        fontSize: width! * 0.06,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: height! * 0.02,
                  ),
                  Text(
                    "Home",
                    style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: width! * 0.05,),
                  ),
                  Text(
                    "About Us",
                    style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: width! * 0.05,),
                  ),
                  Text(
                    "Careers",
                    style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: width! * 0.05,),
                  ),
                  Text(
                    "Pricing",
                    style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: width! * 0.05,),
                  ),
                  Text(
                    "Features",
                    style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: width! * 0.05,),
                  ),
                  Text(
                    "Blog",
                    style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: width! * 0.05,),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "LEGAL",
                    style: TextStyle(
                        fontSize: width! * 0.06,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: height! * 0.02,
                  ),
                  Text(
                    "Terms of use",
                    style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: width! * 0.05,),
                  ),
                  Text(
                    "Terms of conditions",
                    style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: width! * 0.05,),
                  ),
                  Text(
                    "Privacy policy",
                    style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: width! * 0.05,),
                  ),
                  Text(
                    "Cookie policy",
                    style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: width! * 0.05,),
                  ),
                  Text(""),
                  Text(""),
                ],
              )
            ],
          ),
          SizedBox(height: height!*0.08,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "NEWSLETTER",
                style: TextStyle(
                    fontSize: width! * 0.06,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: width! * 0.023,
              ),
              Text(
                "Over 25000 people have subscribed",
                style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: width! * 0.034),
              ),
              SizedBox(
                height: width! * 0.02,
              ),
              Container(
                padding:
                EdgeInsets.only(left: 8, right: 4),
                width: width! * 0.8,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Enter your email"),
                    Container(
                      height: width!*0.097,
                      width: width!*0.25,
                      child: ElevatedButton(
                        child: Text("Subscribe", style: TextStyle(fontSize: width!*0.027),),
                        style: borderlessButtonStyle(),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.grey.shade400,
            thickness: 0.8,
            height: height!*0.06,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: width!*0.35,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Privacy & Terms",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: width! * 0.028,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                        Text("Contact Us",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: width! * 0.028,
                              fontWeight: FontWeight.w600
                          ),)
                      ],
                    ),
                  ),
                  Container(
                    width: width!*0.35,
                    child: Text(
                      "Copyright @ 2024 Xpence",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: width! * 0.028,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: height!*0.07,),
              Container(
                width: width!*0.23,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SvgPicture.asset(fbLogo),
                    SizedBox(width: width!*0.038,),
                    SvgPicture.asset(twitterLogo),
                    SizedBox(width: width!*0.038,),
                    SvgPicture.asset(linkedInLogo),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget desktopContainer() {
    return Container(
      height: height! * 0.7,
      padding: EdgeInsets.symmetric(
          horizontal: width! * 0.1, vertical: height! * 0.1),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: height! * 0.04),
            height: height! * 0.4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 110,
                      height: 40,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(logo), fit: BoxFit.contain)),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "LINKS",
                      style: TextStyle(
                          fontSize: width! * 0.015,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: height! * 0.02,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: width! * 0.01,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "About Us",
                      style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: width! * 0.01,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Careers",
                      style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: width! * 0.01,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Pricing",
                      style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: width! * 0.01,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Features",
                      style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: width! * 0.01,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Blog",
                      style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: width! * 0.01,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "LEGAL",
                      style: TextStyle(
                          fontSize: width! * 0.015,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: height! * 0.02,
                    ),
                    Text(
                      "Terms of use",
                      style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: width! * 0.01,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Terms of conditions",
                      style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: width! * 0.01,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Privacy policy",
                      style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: width! * 0.01,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Cookie policy",
                      style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: width! * 0.01,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(""),
                    Text(""),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "NEWSLETTER",
                      style: TextStyle(
                          fontSize: width! * 0.015,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: width! * 0.023,
                    ),
                    Text(
                      "Over 25000 people have subscribed",
                      style: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: width! * 0.014),
                    ),
                    SizedBox(
                      height: width! * 0.01,
                    ),
                    Container(
                      padding:
                          EdgeInsets.only(left: 8, right: 4, top: 4, bottom: 4),
                      width: width! * 0.23,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Enter your email"),
                          Container(
                            height: 46,
                            child: ElevatedButton(
                              child: Text("Subscribe"),
                              style: borderlessButtonStyle(),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Divider(
            color: Colors.grey.shade300,
            thickness: 0.8,
            height: height!*0.06,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: width!*0.12,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Privacy & Terms",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: width! * 0.0085,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    Text("Contact Us",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: width! * 0.0085,
                          fontWeight: FontWeight.w600
                      ),)
                  ],
                ),
              ),
              Container(
                width: width!*0.12,
                child: Text(
                  "Copyright @ 2024 Xpence",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: width! * 0.0085,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ),
              Container(
                width: width!*0.12,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SvgPicture.asset(fbLogo),
                    SizedBox(width: width!*0.01,),
                    SvgPicture.asset(twitterLogo),
                    SizedBox(width: width!*0.01,),
                    SvgPicture.asset(linkedInLogo),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
