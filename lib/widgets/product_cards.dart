import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_website/utils/constants.dart';

class DeskTopProductCard extends StatefulWidget {
  Color avatarColor;
  String image;
  String head;
  String subhead;
  bool active;

  DeskTopProductCard(
      {super.key,
      required this.avatarColor,
      required this.image,
      required this.head,
      required this.subhead,
      required this.active});

  @override
  State<DeskTopProductCard> createState() => _DeskTopProductCardState();
}

class _DeskTopProductCardState extends State<DeskTopProductCard> {
  double getElevation(bool? active) {
    if (active!) {
      return 2;
    } else {
      return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height! * 0.47,
      width: height! * 0.47,
      decoration: BoxDecoration(
          color: widget.active ? Colors.white : null,
          boxShadow: widget.active
              ? [
                  BoxShadow(
                      color: Colors.grey.shade100,
                      spreadRadius: 2,
                      blurRadius: 10),
                ]
              : null,
          borderRadius: BorderRadius.circular(13)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: widget.avatarColor.withAlpha(40),
            radius: 30,
            child: Center(
              child: SvgPicture.asset(widget.image),
            ),
          ),
          SizedBox(
            height: height! * 0.026,
          ),
          Text(
            widget.head,
            style: TextStyle(
                letterSpacing: 1.01,
                fontSize: width! * 0.019,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: height! * 0.01,
          ),
          Center(
            child: Text(
              widget.subhead,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: width! * 0.01, color: Colors.grey.shade500),
            ),
          ),
          SizedBox(
            height: height! * 0.03,
          ),
          widget.active
              ? SizedBox(
                  height: 20,
                  width: 20,
                  child: SvgPicture.asset(
                    color: Colors.black,
                    arrow,
                    width: 20,
                    height: 20,
                    fit: BoxFit.contain,
                  ))
              : const SizedBox()
        ],
      ),
    );
  }
}

class MobileProductCard extends StatefulWidget {
  Color avatarColor;
  String image;
  String head;
  String subhead;

  MobileProductCard(
      {super.key,
      required this.avatarColor,
      required this.image,
      required this.head,
      required this.subhead});

  @override
  State<MobileProductCard> createState() => _MobileProductCardState();
}

class _MobileProductCardState extends State<MobileProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height! * 0.37,
      width: height! * 0.4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: widget.avatarColor.withAlpha(40),
            radius: 50,
            child: Center(
              child: SvgPicture.asset(widget.image, height: 30,),
            ),
          ),
          SizedBox(
            height: height! * 0.026,
          ),
          Text(
            widget.head,
            style: TextStyle(
                fontSize: width! * 0.08,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: height! * 0.01,
          ),
          Center(
            child: Text(
              widget.subhead,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: width!*0.039, color: Colors.grey.shade500),
            ),
          ),
          SizedBox(
            height: height! * 0.03,
          ),
        ],
      ),
    );
  }
}
