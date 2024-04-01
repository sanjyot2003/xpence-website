import 'package:flutter/material.dart';

import '../utils/constants.dart';

class DesktopFeedbackCard extends StatefulWidget {
  String person;
  Color color;
  String name;
  DesktopFeedbackCard({super.key, required this.name, required this.color, required this.person});

  @override
  State<DesktopFeedbackCard> createState() => _DesktopFeedbackCardState();
}

class _DesktopFeedbackCardState extends State<DesktopFeedbackCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(width! * 0.016),
      height: height! * 0.38,
      width: width! * 0.24,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade100, spreadRadius: 2, blurRadius: 10),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border(
            top: BorderSide(color: widget.color, width: 8.0),
          )),
      child: Column(
        children: [
          Text(
            "Eleifend fames amet, fames enim. Ullamcorper pellentesque ac volutpat nibh aliquet et, ut netus. Vel fringilla sit eros pretium filis massa mauris, aliquam congue.",
            style: TextStyle(height: 1.8, fontSize: width! * 0.012),
          ),
          SizedBox(
            height: height! * 0.028,
          ),
          Row(
            children: [
              CircleAvatar(
                foregroundImage: AssetImage(widget.person),
                radius: 16,
              ),
              SizedBox(
                width: width! * 0.01,
              ),
              Text(
                widget.name,
                style: TextStyle(
                    fontSize: width! * 0.012, fontWeight: FontWeight.w600),
              ),
              Text(
                " CEO",
                style: TextStyle(
                    fontSize: width! * 0.012, color: Colors.grey.shade400),
              )
            ],
          )
        ],
      ),
    );
  }
}

class MobileFeedbackCard extends StatefulWidget {
  String person;
  Color color;
  String name;
  MobileFeedbackCard({super.key, required this.name, required this.color, required this.person});

  @override
  State<MobileFeedbackCard> createState() => _MobileFeedbackCardState();
}

class _MobileFeedbackCardState extends State<MobileFeedbackCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(width! * 0.025),
      height: height! * 0.27,
      width: width! * 0.7,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade100, spreadRadius: 2, blurRadius: 10),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border(
            top: BorderSide(color: widget.color, width: 10.0),
          )),
      child: Column(
        children: [
          Text(
            "Eleifend fames amet, fames enim. Ullamcorper pellentesque ac volutpat nibh aliquet et, ut netus. Vel fringilla sit eros pretium filis massa mauris, aliquam congue.",
            style: TextStyle(height: 1.8, fontSize: width! * 0.037),
          ),
          SizedBox(
            height: height! * 0.028,
          ),
          Row(
            children: [
              CircleAvatar(
                foregroundImage: AssetImage(widget.person),
                radius: 18,
              ),
              SizedBox(
                width: width! * 0.04,
              ),
              Text(
                widget.name,
                style: TextStyle(
                    fontSize: width! * 0.038, fontWeight: FontWeight.w600),
              ),
              Text(
                " CEO",
                style: TextStyle(
                    fontSize: width! * 0.038, color: Colors.grey.shade400),
              )
            ],
          )
        ],
      ),
    );
  }
}

