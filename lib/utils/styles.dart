import 'package:flutter/material.dart';
import 'package:flutter_website/utils/colors.dart';

ButtonStyle borderedButtonStyle() {
  return ButtonStyle(
    elevation: MaterialStateProperty.all(0),
    foregroundColor: MaterialStateProperty.all(AppColors.primaryColor),
    backgroundColor: MaterialStateProperty.all(Colors.white),
    shape: MaterialStateProperty.all(RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
      side: BorderSide(color: AppColors.primaryColor)
    ))
  );
}

ButtonStyle borderlessButtonStyle() {
  return ButtonStyle(
    elevation: MaterialStateProperty.all(0),
    foregroundColor: MaterialStateProperty.all(Colors.white),
    backgroundColor: MaterialStateProperty.all(AppColors.primaryColor),
    shape: MaterialStateProperty.all(RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10)
    ))
  );
}