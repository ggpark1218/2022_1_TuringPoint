import 'package:flutter/material.dart';
import 'package:turning/theme/app_colors.dart';
import 'package:turning/theme/app_text_styles.dart';

class AppTheme{
  AppTheme._();

  static final TextTheme _regularTextTheme = TextTheme(
    headline1: AppTextStyle.headline1,
  );

  static const ColorScheme _colorScheme = ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
  );

}