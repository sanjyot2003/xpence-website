import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_website/utils/colors.dart';
import 'package:flutter_website/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container9 extends StatelessWidget {
  const Container9({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileContainer(),
      desktop: desktopContainer(),
    );
  }

  Widget mobileContainer() {
    return Container(
      height: height! * 0.9,
      width: double.infinity,
      color: AppColors.primaryColor,
      child: Stack(
        children: [
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              height: height! * 0.3,
              width: width! * 0.5,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(vector_2), fit: BoxFit.fill)),
            ),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: Container(
              height: height! * 0.3,
              width: width! * 0.6,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(vector_1), fit: BoxFit.fill)),
            ),
          ),
          Positioned(
            top: height!*0.1,
            left: width!*0.05,
            right: width!*0.05,
            child: Container(
              height: height!*0.6,
              child: Column(
                children: [
                  Text(
                    "20M+ downloaded\nfrom 32 different \ncountries",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: width!/10.8,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: height!*0.04,),
                  Text(
                    "Try demo for 7 days with full features.",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: width!*0.05,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  SizedBox(height: height!*0.08,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white
                    ),
                    width: width!*0.45,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Try free demo", style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: width!*0.04
                        ),),
                        SizedBox(width: 12,),
                        Icon(Icons.keyboard_arrow_down_rounded,
                          color: AppColors.primaryColor,)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: width!*0.05,
            top: height!*0.54,
            child: SvgPicture.asset(bottomImg1, height: height!*0.16,),
          ),
          Positioned(
            right: width!*0.05,
            top: height!*0.65,
            child: SvgPicture.asset(bottomImg2, height: height!*0.16,),
          ),
        ],
      ),
    );
  }

  Widget desktopContainer() {
    return Container(
      height: height!*1,
      width: double.infinity,
      color: AppColors.primaryColor,
      child: Stack(
        children: [
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              height: height! * 0.4,
              width: width! * 0.3,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(vector_2), fit: BoxFit.fill)),
            ),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: Container(
              height: height! * 0.4,
              width: width! * 0.3,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(vector_1), fit: BoxFit.fill)),
            ),
          ),
          Positioned(
            top: height!*0.11,
            right: width!*0.15,
            left: width!*0.15,
            child: Container(
              height: height!*0.6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "20M+ downloaded from 32\ndifferent countries",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: width!*0.046,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: height!*0.04,),
                  Text(
                    "Try demo for 7 days with full features.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: width!*0.02,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  SizedBox(height: height!*0.08,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                    ),
                    width: width!*0.14,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Try free demo", style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: width!*0.0127
                        ),),
                        SizedBox(width: 12,),
                        Icon(Icons.keyboard_arrow_down_rounded,
                        color: AppColors.primaryColor,)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: width!*0.05,
            top: height!*0.5,
            child: SvgPicture.asset(bottomImg1, height: height!*0.4,),
          ),
          Positioned(
            right: width!*0.05,
            top: height!*0.5,
            child: SvgPicture.asset(bottomImg2, height: height!*0.4,),
          ),
        ],
      ),
    );
  }
}
