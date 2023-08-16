import 'package:flutter/material.dart';
import 'package:themexpert_video/theme/app_theme.dart';
import 'package:themexpert_video/tokens/app_colors.dart';

class SwitchComponentTheme extends AppTheme {
  const SwitchComponentTheme(
    super.context,
  );

  @override
  Color get surfaceColor => AppColors.whiteLight;

  List<BoxShadow>? get shadow => darkMode
      ? null
      : [
          const BoxShadow(
            color: AppColors.darkBlue01,
            blurRadius: 1,
            offset: Offset(0, 1),
          )
        ];

  BorderRadius get borderRadius => BorderRadius.circular(200);
}
