import 'package:flutter/material.dart';
import 'package:flutter_website/pages/home_page.dart';
import 'package:flutter_website/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xpense',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: AppColors.primaryColor,
        fontFamily: 'HindSiliguri'
      ),
      home: const HomePage(),
    );
  }
}
