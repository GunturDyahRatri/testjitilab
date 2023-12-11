import 'package:flutter/material.dart';

class Pallets {
  Pallets._();

  static Color get primary => const Color(0xFF3973AC);
  static Color get primary2 => const Color(0xFF252271);
  static Color get button2 => const Color(0xFFF06A25);
  static Color get lightBlue => const Color(0xFFD9E6F2);
  static Color get grey => const Color(0xFFD9D9D9);
  static Color get button => const Color(0xA8263238);
  static Color get green => const Color(0xFF3BAC39);
  static Color get textBlack => const Color(0xFF263238);
}

extension StringColorExtension on String {
  Color? toColor() {
    if (isEmpty) return null;
    final buffer = StringBuffer();
    if (length == 6 || length == 7) buffer.write('ff');
    buffer.write(replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
