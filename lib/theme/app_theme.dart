import 'package:themexpert/themexpert.dart';
import 'package:flutter/material.dart';
import 'package:themexpert_video/tokens/app_colors.dart';
import 'package:themexpert_video/tokens/app_typography.dart';

class AppTheme extends BaseTheme {
  const AppTheme(
    super.context,
  );

  Color get surfaceColor => darkMode ? AppColors.darkBlue01 : AppColors.white;

  Color get highlightTextColor =>
      darkMode ? AppColors.whiteLight : AppColors.blue;

  TextStyle get txBody => AppTypography.baseText.copyWith(
        color: highlightTextColor,
      );

  TextStyle get txTitle => txBody.copyWith(
        fontSize: 38,
        fontWeight: FontWeight.w600,
      );

  TextStyle get txBodySmaller => txBody.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w600,
      );
}

AppTheme themeOf(BuildContext context) {
  return ThemeX.ofType<AppTheme>(context);
}
