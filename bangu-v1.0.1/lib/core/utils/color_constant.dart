import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color red700 = fromHex('#c04949');

  static Color black900 = fromHex('#000000');

  static Color blueGray400 = fromHex('#888888');

  static Color blueGray600 = fromHex('#4f638c');

  static Color blueGray900 = fromHex('#2b2b2b');

  static Color black9003f = fromHex('#3f000000');

  static Color whiteA700 = fromHex('#ffffff');

  static Color gray100 = fromHex('#f2f2f2');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
