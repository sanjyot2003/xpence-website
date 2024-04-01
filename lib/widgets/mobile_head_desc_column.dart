import 'package:flutter/material.dart';
import 'package:flutter_website/utils/colors.dart';

import '../utils/constants.dart';

class TitleSubtitleColumnMobile extends StatefulWidget {
  String subhead;
  String head;
  String desc;

  TitleSubtitleColumnMobile({super.key, required this.subhead, required this.desc, required this.head});

  @override
  State<TitleSubtitleColumnMobile> createState() => _TitleSubtitleColumnMobileState();
}

class _TitleSubtitleColumnMobileState extends State<TitleSubtitleColumnMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width!*0.07),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.subhead, style: TextStyle(
              fontSize: width!*0.039,
              color: Colors.grey.shade500
          ),),
          SizedBox(height: height!*0.016,),
          Text(widget.head, style: TextStyle(
              fontSize: width!/7.38,
              fontWeight: FontWeight.bold,
              height: 1.08
          )),
          SizedBox(height: height!*0.017,),
          Text(widget.desc,
            softWrap: true,
            style: TextStyle(
                fontSize: width!*0.039,
                color: Colors.grey.shade500
            ),),
          SizedBox(height: height!*0.018,),
          Row(
            children: [
              Text("Learn more", style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: width!*0.037
              ),),
              const SizedBox(width: 5,),
              Icon(Icons.arrow_forward_rounded, color: Colors.deepOrange, size: width!*0.035,)
            ],
          )
        ],
      ),
    );
  }
}
