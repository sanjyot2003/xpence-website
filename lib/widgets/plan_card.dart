import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_website/utils/colors.dart';
import 'package:flutter_website/utils/constants.dart';

import '../utils/styles.dart';

class DeskTopPlanCard extends StatefulWidget {
  bool active;
  String image;
  String head;
  String price;

  DeskTopPlanCard(
      {super.key,
      required this.active,
      required this.image,
      required this.head,
      required this.price});

  @override
  State<DeskTopPlanCard> createState() => _DeskTopPlanCardState();
}

class _DeskTopPlanCardState extends State<DeskTopPlanCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30, left: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              blurRadius: 10, spreadRadius: 2, color: Colors.grey.shade100)
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      height: height! * 0.66,
      width: width! * 0.24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            child: SvgPicture.asset(widget.image),
          ),
          SizedBox(
            height: height! * 0.04,
          ),
          Text(widget.head,
            style: TextStyle(
                fontSize: width! * 0.019,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: height! * 0.042,
          ),
          listTileAttribute("Store unlimited data"),
          listTileAttribute("Export to pdf, xls, csv"),
          listTileAttribute("Cloud server support"),
          SizedBox(
            height: height! * 0.042,
          ),
          getPrice(widget.price),
          SizedBox(
            height: height! * 0.001,
          ),
          Text("up to 3 user + 1.99 per user", style: TextStyle(
            fontSize: width!*0.009,
            color: Colors.grey.shade400
          ),),
          SizedBox(height: height!*0.054,),
          Container(
            height: 45,
            width: width! * 0.1,
            child: ElevatedButton(
              style: borderedButtonStyle(),
              child: Row(
                children: [
                  const Text("Get this"),
                  SizedBox(
                    width: width! * 0.01,
                  ),
                  SvgPicture.asset(
                    arrow,
                    color: AppColors.primaryColor,
                    width: 18,
                  )
                ],
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }

  Widget getPrice(String price) {
    return Row(
      children: [
        Icon(Icons.currency_rupee_outlined, size: width!*0.018,),
        Text(price + ".99/", style: TextStyle(
          fontSize: width!*0.018,
          fontWeight: FontWeight.bold
        ),),
        Text(" year", style: TextStyle(color: Colors.grey.shade400, fontSize: width!*0.014),)
      ],
    );
  }

  Widget listTileAttribute(String text) {
    return Row(
      children: [
        Icon(Icons.done, color: Colors.grey.shade400, size: width!*0.018,),
        SizedBox(
          width: 10,
        ),
        Text(text, style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: width!*0.012,
          height: 1.9
        ),)
      ],
    );
  }
}

class MobilePlanCard extends StatefulWidget {
  bool active;
  String image;
  String head;
  String price;

  MobilePlanCard(
      {super.key,
      required this.active,
      required this.head,
      required this.image,
      required this.price});

  @override
  State<MobilePlanCard> createState() => _MobilePlanCardState();
}

class _MobilePlanCardState extends State<MobilePlanCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: width!*0.1, left: width!*0.1),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              blurRadius: 10, spreadRadius: 2, color: Colors.grey.shade100)
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      height: height! * 0.55,
      width: height! * 0.4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            child: SvgPicture.asset(widget.image, height: width!*0.08,),
          ),
          SizedBox(
            height: height! * 0.04,
          ),
          Text(widget.head,
            style: TextStyle(
                fontSize: width! * 0.077,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: height! * 0.032,
          ),
          listTileAttribute("Store unlimited data"),
          listTileAttribute("Export to pdf, xls, csv"),
          listTileAttribute("Cloud server support"),
          SizedBox(
            height: height! * 0.022,
          ),
          getPrice(widget.price),
          SizedBox(
            height: height! * 0.001,
          ),
          Text("up to 3 user + 1.99 per user", style: TextStyle(
              fontSize: width!*0.03,
              color: Colors.grey.shade400
          ),),
          SizedBox(height: height!*0.054,),
          Container(
            height: 45,
            width: width! * 0.38,
            child: ElevatedButton(
              style: borderedButtonStyle(),
              child: Row(
                children: [
                  const Text("Get this"),
                  SizedBox(
                    width: width! * 0.04,
                  ),
                  SvgPicture.asset(
                    arrow,
                    color: AppColors.primaryColor,
                    width: 18,
                  )
                ],
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }

  Widget getPrice(String price) {
    return Row(
      children: [
        Icon(Icons.currency_rupee_outlined, size: width!*0.058,),
        Text(price + ".99/", style: TextStyle(
            fontSize: width!*0.058,
            fontWeight: FontWeight.bold
        ),),
        Text(" year", style: TextStyle(color: Colors.grey.shade400, fontSize: width!*0.054),)
      ],
    );
  }

  Widget listTileAttribute(String text) {
    return Row(
      children: [
        Icon(Icons.done, color: Colors.grey.shade400, size: width!*0.072,),
        const SizedBox(
          width: 8,
        ),
        Text(text, style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: width!*0.043,
            height: 1.9
        ),)
      ],
    );
  }
}
