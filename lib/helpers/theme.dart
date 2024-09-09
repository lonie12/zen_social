import 'package:flutter/material.dart';
import 'package:social_app/helpers/colors.dart';
import 'package:social_app/helpers/constants.dart';

// APP LIGHT THEME
final themeLight = ThemeData(
  scaffoldBackgroundColor: const Color(0xFFFFFFFF),
  primaryColor: primaryColor,
  colorScheme: ColorScheme.fromSeed(
    seedColor: primaryColor,
    brightness: Brightness.light,
  ),
  useMaterial3: true,
  fontFamily: 'SpaceGrotesk',
  iconTheme: IconThemeData(color: secondaryColor),
  bottomSheetTheme: const BottomSheetThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(lgRadius),
        topRight: Radius.circular(lgRadius),
      ),
    ),
  ),
);
