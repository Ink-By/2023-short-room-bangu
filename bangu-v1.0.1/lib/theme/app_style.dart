import 'package:flutter/material.dart';
import 'package:bangu/core/app_export.dart';

class AppStyle {
  static TextStyle txtRobotoRegular16 = TextStyle(
    color: ColorConstant.blueGray400,
    fontSize: getFontSize(
      16,
    ),
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
  );

  static TextStyle txtSourceSansProSemiBold17Red700 = TextStyle(
    color: ColorConstant.red700,
    fontSize: getFontSize(
      17,
    ),
    fontFamily: 'Source Sans Pro',
    fontWeight: FontWeight.w600,
  );

  static TextStyle txtSourceSansProSemiBold17 = TextStyle(
    color: ColorConstant.blueGray900,
    fontSize: getFontSize(
      17,
    ),
    fontFamily: 'Source Sans Pro',
    fontWeight: FontWeight.w600,
  );

  static TextStyle txtRobotoRegular20 = TextStyle(
    color: ColorConstant.black900,
    fontSize: getFontSize(
      20,
    ),
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
  );
}
