import 'package:flutter/material.dart';
import 'package:flutter_website/utils/colors.dart';

import '../utils/constants.dart';

class TitleSubtitleColumn extends StatefulWidget {
  String subhead;
  String head;
  String desc;

  TitleSubtitleColumn({super.key, required this.subhead, required this.desc, required this.head});

  @override
  State<TitleSubtitleColumn> createState() => _TitleSubtitleColumnState();
}

class _TitleSubtitleColumnState extends State<TitleSubtitleColumn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width!*0.4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.subhead, style: TextStyle(
            fontSize: width!*0.015,
            color: Colors.grey.shade500
          ),),
          SizedBox(height: height!*0.016,),
          Text(widget.head, style: TextStyle(
              fontSize: width!/15.8,
              fontWeight: FontWeight.bold,
              height: 1.08
          )),
          SizedBox(height: height!*0.017,),
          Text(widget.desc,
          softWrap: true,
          style: TextStyle(
            fontSize: width!*0.014,
            color: Colors.grey.shade500
          ),),
          SizedBox(height: height!*0.018,),
          Row(
            children: [
              Text("Learn more", style: TextStyle(
                color: AppColors.primaryColor,
                fontSize: width!*0.014
              ),),
              const SizedBox(width: 5,),
              Icon(Icons.arrow_forward_rounded, color: Colors.deepOrange, size: width!*0.013,)
            ],
          )
        ],
      ),
    );
  }
}
