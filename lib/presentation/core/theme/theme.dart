import 'package:flutter/material.dart';
import 'package:zealth_assignment/presentation/core/theme/colors.dart';
import 'package:zealth_assignment/presentation/core/theme/fonts.dart';

final appThemeData = ThemeData(
  primaryColor: Colors.white,
  brightness: Brightness.light,
  scaffoldBackgroundColor: Color(0xffF8F8F8),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xffF8F8F8),
    titleTextStyle: TextStyle(
      color: Kolors.fontColor,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    centerTitle: true,
    elevation: 0,
  ),
  fontFamily: Fonts.POPPINS,
  iconTheme: const IconThemeData(
    color: Kolors.primaryColor,
    size: 24,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    unselectedItemColor: Color(0xff3E5061),
    selectedItemColor: Kolors.pinkColor,
    showSelectedLabels: true,
    showUnselectedLabels: true,
    unselectedLabelStyle: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 10,
      color: Kolors.fontColor,
    ),
    selectedLabelStyle: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 10,
      color: Kolors.pinkColor,
    ),
    type: BottomNavigationBarType.fixed,
  ),
);
