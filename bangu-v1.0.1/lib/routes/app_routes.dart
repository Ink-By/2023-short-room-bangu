import 'dart:js';

import 'package:flutter/material.dart';
import 'package:bangu/presentation/android_large_five_screen/android_large_five_screen.dart';
import 'package:bangu/presentation/android_large_six_screen/android_large_six_screen.dart';
import 'package:bangu/presentation/android_large_seven_screen/android_large_seven_screen.dart';
import 'package:bangu/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:bangu/presentation/information_list/information_list.dart';

class AppRoutes {
  static const String androidLargeFiveScreen = '/android_large_five_screen';

  static const String androidLargeSixScreen = '/android_large_six_screen';

  static const String androidLargeSevenScreen = '/android_large_seven_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String informationListScreen = '/information_list';

  static Map<String, WidgetBuilder> routes = {
    androidLargeFiveScreen: (context) => AndroidLargeFiveScreen(),
    androidLargeSixScreen: (context) => AndroidLargeSixScreen(),
    androidLargeSevenScreen: (context) => AndroidLargeSevenScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    informationListScreen: (context) => InformationList()
  };
}
