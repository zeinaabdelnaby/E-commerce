// ignore_for_file: unused_label, dead_code

import 'package:e_commerce/consts/app_colors.dart';
import 'package:flutter/material.dart';

class Styles {
  static ThemeData themeData(
      {required bool isDarktheme, required BuildContext context}) {
    return ThemeData(
        scaffoldBackgroundColor: isDarktheme
            ? AppColors.darkScaffoldColor
            : AppColors.lightScaffoldColor,
        cardColor: isDarktheme
            ? const Color.fromARGB(255, 13, 6, 37)
            : AppColors.lightCardColor,
        brightness: isDarktheme ? Brightness.dark : Brightness.light,
        appBarTheme: AppBarTheme(
            backgroundColor: isDarktheme
                ? AppColors.darkScaffoldColor
                : AppColors.lightScaffoldColor,
            elevation: 0,
            centerTitle: false,
            titleTextStyle:
                TextStyle(color: isDarktheme ? Colors.white : Colors.black)));
  }
}
