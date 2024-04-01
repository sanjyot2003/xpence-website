import 'package:flutter/material.dart';
import 'package:flutter_website/pages/containers/container1.dart';
import 'package:flutter_website/pages/containers/container2.dart';
import 'package:flutter_website/pages/containers/container3.dart';
import 'package:flutter_website/pages/containers/container4.dart';
import 'package:flutter_website/pages/containers/container5.dart';
import 'package:flutter_website/pages/containers/container7.dart';
import 'package:flutter_website/pages/containers/container8.dart';
import 'package:flutter_website/pages/containers/container9.dart';
import 'package:flutter_website/utils/constants.dart';
import 'package:flutter_website/widgets/navbar.dart';

import 'containers/container10.dart';
import 'containers/container6.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            NavBar(),
            Container1(),
            Container2(),
            Container3(),
            Container4(),
            Container5(),
            Container6(),
            Container7(),
            Container8(),
            Container9(),
            Container10()
          ],
        ),
      ),
    );
  }
}
