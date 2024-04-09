import 'package:ecommerceapp/utils/theme/custom_theme/appbar_theme.dart';
import 'package:ecommerceapp/utils/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:ecommerceapp/utils/theme/custom_theme/checkbox_theme.dart';
import 'package:ecommerceapp/utils/theme/custom_theme/chip_theme.dart';
import 'package:ecommerceapp/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:ecommerceapp/utils/theme/custom_theme/outlined_button_theme.dart';
import 'package:ecommerceapp/utils/theme/custom_theme/text_field_theme.dart';
import 'package:ecommerceapp/utils/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';


class AppTheme{
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextThemes.lightTextTheme,
    chipTheme: ChipThemes.lightChipTheme,
    appBarTheme: AppBarThemes.lightAppBarTheme,
    checkboxTheme: CheckBoxThemes.lightCheckbocTheme,
    bottomSheetTheme: BottomSheetThemes.lightBottomSheetTheme,
    elevatedButtonTheme: ElevatedButtonThemeDatas.lightElevatedButtonTheme,
    outlinedButtonTheme: OutlinedButtonThemes.lightOutlinedButtonTheme,
    inputDecorationTheme: TextFormFieldThemes.lightInputDecorationTheme
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TextThemes.darkTextTheme,
    chipTheme: ChipThemes.darkChipTheme,
    appBarTheme: AppBarThemes.darkAppBarTheme,
    checkboxTheme: CheckBoxThemes.darkCheckbocTheme,
    bottomSheetTheme: BottomSheetThemes.darkBottomSheetTheme,
    elevatedButtonTheme: ElevatedButtonThemeDatas.darkElevatedButtonTheme,
    outlinedButtonTheme: OutlinedButtonThemes.darkOutlinedButtonTheme,
    inputDecorationTheme: TextFormFieldThemes.darkInputDecorationTheme
  );
}