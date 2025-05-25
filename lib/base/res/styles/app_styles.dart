import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

Color primary=const Color(0xFF687daf);
class AppStyles{
  static Color primarycolor = primary;
  static Color textcolor = Color(0xFF3b3b3b);
  static Color bgColor = Color(0xFFeeedf2);
  static Color ticketblue = Color(0xFF523799);
  static Color planecolor = Color(0xFFBFC20F);

  static TextStyle headLineStyle2 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color: AppStyles.textcolor,
  );
  static TextStyle headLineStyle1 = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
  );
  static TextStyle headLineStyle3 = TextStyle(
    fontSize: 19,
    fontWeight: FontWeight.w500,
    color: AppStyles.textcolor,
  );
  static TextStyle textstyle = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );
}