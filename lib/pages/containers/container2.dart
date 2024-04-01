import 'package:flutter/material.dart';
import 'package:flutter_website/utils/colors.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../utils/constants.dart';

class Container2 extends StatefulWidget {
  const Container2({super.key});

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileContainer2(),
      desktop: desktopContainer2(),
    );
  }

  Widget mobileContainer2() {
    return Container(
      height: height! * 0.5,
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.primaryColor),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    height: height! * 0.2,
                    width: width! * 0.2,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(vector_2), fit: BoxFit.fill)),
                  ),
                ),
                Positioned(
                  left: 0,
                  bottom: 0,
                  child: Container(
                    height: height! * 0.2,
                    width: width! * 0.2,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(vector_1), fit: BoxFit.fill)),
                  ),
                ),
                Positioned(
                  right: width! * 0.05,
                  left: width! * 0.05,
                  child: Container(
                    width: double.infinity,
                    height: height! * 0.4,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(dashboard), fit: BoxFit.contain),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: height!*0.14,
            width: double.infinity,
            color: Colors.white,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: width!*0.1, vertical: 10),
              child: Row(
                children: [
                  companyLogo2(fb),
                  SizedBox(width: width!*0.1,),
                  companyLogo2(google),
                  SizedBox(width: width!*0.1,),
                  companyLogo2(cocaCola),
                  SizedBox(width: width!*0.1,),
                  companyLogo2(linkedIn),
                  SizedBox(width: width!*0.1,),
                  companyLogo2(samsung)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget desktopContainer2() {
    return Container(
        height: height! * 1,
        width: double.infinity,
        decoration: BoxDecoration(color: AppColors.primaryColor),
        child: Column(
          children: [
            Expanded(
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
                    right: width! * 0.1,
                    left: width! * 0.1,
                    bottom: 0,
                    child: Container(
                      width: double.infinity,
                      height: height! * 0.7,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(dashboard), fit: BoxFit.contain),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: height! * 0.2,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  companyLogo(fb),
                  companyLogo(google),
                  companyLogo(cocaCola),
                  companyLogo(linkedIn),
                  companyLogo(samsung),
                ],
              ),
            )
          ],
        ));
  }

  Widget companyLogo(String companyName) {
    return Container(
      height: height! * 0.1,
      width: width! * 0.1,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(companyName), fit: BoxFit.contain)),
    );
  }

  Widget companyLogo2(String companyName) {
    return Container(
      height: height! * 0.2,
      width: width! * 0.4,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(companyName), fit: BoxFit.contain)),
    );
  }
}
