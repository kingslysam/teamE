import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black9004c = fromHex('#4c000000');

  static Color gray400 = fromHex('#c6c4ca');

  static Color gray901 = fromHex('#1e1e1e');

  static Color gray902 = fromHex('#1c162e');

  static Color whiteA700A2 = fromHex('#a2ffffff');

  static Color gray900 = fromHex('#1c1c1e');

  static Color bluegray100 = fromHex('#d2d1d7');

  static Color lightGreen100 = fromHex('#d9efd4');

  static Color green50087 = fromHex('#8732d74b');

  static Color green500 = fromHex('#32d74b');

  static Color gray50 = fromHex('#f9f9fb');

  static Color whiteA700Cc = fromHex('#ccffffff');

  static Color teal300 = fromHex('#3aafaa');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color pink500 = fromHex('#ef2d57');

  static Color black90019 = fromHex('#19000000');

  static Color black90014 = fromHex('#14000000');

  static Color whiteA700 = fromHex('#ffffff');

  static Color redA700 = fromHex('#eb001b');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
