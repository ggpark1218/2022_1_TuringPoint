import 'package:flutter/material.dart';
import 'package:turning/theme/app_colors.dart';
import 'package:turning/theme/app_text_styles.dart';

class AppTheme{
  AppTheme._();

  static final TextTheme _regularTextTheme = TextTheme(
    headline1: AppTextStyle.headline1,
    headline2: AppTextStyle.headline2,
    headline3: AppTextStyle.headline3,
    subtitle1: AppTextStyle.subtitle1,
    bodyText1: AppTextStyle.body1,
    button: AppTextStyle.button,
  );

  static const ColorScheme _colorScheme = ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
  );

  static final ThemeData regularTheme = ThemeData(
    colorScheme: _colorScheme,
    textTheme: _regularTextTheme,

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith((states){
          if(states.contains(MaterialState.disabled)){
            return AppColors.onPrimary;
          }
          return AppColors.primary;
      }),
        //minimumSize: MaterialStateProperty.all(const Size(700,120)),
        textStyle: MaterialStateProperty.all(
            AppTextStyle.button,
        ),
        foregroundColor: MaterialStateProperty.all(
            AppColors.onPrimary
        ),

      ),
    ),

    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith((states){
          if(states.contains(MaterialState.disabled)){
            return AppColors.onPrimary;
          }
          return AppColors.secondary;
      }),
        textStyle: MaterialStateProperty.all(
          AppTextStyle.body1,
        ),
      ),
    ),

    // outlinedButtonTheme: OutlinedButtonThemeData(
    //     style: ButtonStyle(
    //         foregroundColor: MaterialStateProperty.all(AppColors.primary[400]),
    //       textStyle: MaterialStateProperty.all(
    //           AppTextStyle.body1
    //       ),
    //       minimumSize: MaterialStateProperty.all(Size(400,120)),
    //       side: MaterialStateProperty.all(BorderSide(color: AppColors.primary)),
    //     ),
    // ),


  );
  

}