import 'package:bottom_navigation_bars/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCheckBoxTheme {
  CustomCheckBoxTheme._();

//Light
  static CheckboxThemeData lightCheckboxThemeData = CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(
        4.r,
      ),
    ),
    checkColor: WidgetStateProperty.resolveWith(
      (states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.white;
        } else {
          return AppColors.black;
        }
      },
    ),
    fillColor: WidgetStateProperty.resolveWith(
      (states) {
        if (states.contains(WidgetState.selected)) {
          return Colors.blue;
        } else {
          return Colors.transparent;
        }
      },
    ),
  );

//Dark
  static CheckboxThemeData darkCheckboxThemeData = CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(
        4.r,
      ),
    ),
    checkColor: WidgetStateProperty.resolveWith(
      (states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.white;
        } else {
          return AppColors.black;
        }
      },
    ),
    fillColor: WidgetStateProperty.resolveWith(
      (states) {
        if (states.contains(WidgetState.selected)) {
          return Colors.blue;
        } else {
          return Colors.transparent;
        }
      },
    ),
  );
}
