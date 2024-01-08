import 'package:class_management/core/utils/constants/constants.dart';
import 'package:class_management/core/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: AppColors.grey,
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    textTheme: AppTextTheme.lightTextTheme,
    // chipTheme: AppChipTheme.lightChipTheme,
    scaffoldBackgroundColor: AppColors.white,
    appBarTheme: AppAppBarTheme.lightAppBarTheme,
    //checkboxTheme: AppCheckboxTheme.lightCheckboxTheme,
    //bottomSheetTheme: AppBottomSheetTheme.lightBottomSheetTheme,
    //elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
    // outlinedButtonTheme: AppOutlineButtonTheme.lightOutlinedButtonTheme,
    // inputDecorationTheme: AppTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: AppColors.grey,
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    textTheme: AppTextTheme.darkTextTheme,
    // chipTheme: AppChipTheme.darkChipTheme,
    scaffoldBackgroundColor: AppColors.black,
    appBarTheme: AppAppBarTheme.darkAppBarTheme,
    // checkboxTheme: AppCheckboxTheme.darkCheckboxTheme,
    // bottomSheetTheme: AppBottomSheetTheme.darkBottomSheetTheme,
    // elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
    // outlinedButtonTheme: AppOutlineButtonTheme.darkOutlinedButtonTheme,
    // inputDecorationTheme: AppTextFormFieldTheme.darkInputDecorationTheme,
  );
}
