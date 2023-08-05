import 'package:coffee_app/common/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Theme {
  static final ThemeData light = ThemeData.light().copyWith(
    primaryColor: AppColors.lightThemePrimaryColor,
    primaryColorLight: AppColors.lightThemePrimaryColorLight,
    primaryColorDark: AppColors.lightThemePrimaryColorDark,
    splashColor: AppColors.lightThemeSplashColor,
    scaffoldBackgroundColor: AppColors.white,
    textTheme: GoogleFonts.poppinsTextTheme(),
  );
}
