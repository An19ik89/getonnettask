import 'package:flutter/material.dart';
import 'package:flutter_get_on_net_task/presentation/resources/color_manager.dart';
import 'package:flutter_get_on_net_task/presentation/resources/font_manager.dart';
import 'package:flutter_get_on_net_task/presentation/resources/styles_manager.dart';
import 'package:flutter_get_on_net_task/presentation/resources/values_manager.dart';


ThemeData getApplicationTheme() {
  return ThemeData(
    // main colors of the app
      primaryColor: ColorManager.primary,
      primaryColorLight: ColorManager.primaryOpacity70,
      primaryColorDark: ColorManager.darkPrimary,
      disabledColor: ColorManager.grey1,
      // ripple color
      splashColor: ColorManager.primaryOpacity70,
      // will be used incase of disabled button for example
      hintColor: ColorManager.grey,
      colorScheme : ColorScheme.fromSwatch(accentColor: ColorManager.grey),
      // card view theme
      cardTheme: CardTheme(
          color: ColorManager.white,
          shadowColor: ColorManager.grey,
          elevation: AppSize.s4),
      // App bar theme
      appBarTheme: AppBarTheme(
          centerTitle: true,
          color: ColorManager.primary,
          elevation: AppSize.s4,
          shadowColor: ColorManager.primaryOpacity70,
          titleTextStyle: getRegularStyle(
              color: ColorManager.white, fontSize: FontSize.s16)),
      // Button theme
      buttonTheme: ButtonThemeData(
          shape: const StadiumBorder(),
          disabledColor: ColorManager.grey1,
          buttonColor: ColorManager.primary,
          splashColor: ColorManager.primaryOpacity70),

      // elevated button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              textStyle: getRegularStyle(color: ColorManager.white),
              backgroundColor: ColorManager.primary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSize.s12)))),

      // Text theme
      textTheme: TextTheme(
        //displayLarge instead headline1
        displayLarge: getSemiBoldStyle(
            color: ColorManager.darkGrey, fontSize: FontSize.s16),
        // displayMedium instead headline2
        displayMedium: getRegularStyle(color: ColorManager.white, fontSize: FontSize.s16),
        // displaySmall instead headline3
        displaySmall: getBoldStyle(color: ColorManager.primary, fontSize: FontSize.s16),
        // headlineMedium instead headline4
        headlineMedium: getRegularStyle(color: ColorManager.primary, fontSize: FontSize.s14),
        // titleMedium instead subtitle1
        titleMedium: getMediumStyle(color: ColorManager.lightGrey, fontSize: FontSize.s14),
        // titleSmall instead subtitle2
        titleSmall: getMediumStyle(color: ColorManager.primary, fontSize: FontSize.s14),

        // bodyMedium instead bodyText2
        bodyMedium: getRegularStyle(color: ColorManager.grey),
        // bodySmall instead caption
        bodySmall: getMediumStyle(color: ColorManager.lightGrey),
        // bodyLarge instead bodyText1
        bodyLarge: getRegularStyle(color: ColorManager.grey1),
      ),

      // input decoration theme (text form field)

      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(AppPadding.p8),
        // hint style
        hintStyle: getRegularStyle(color: ColorManager.grey1),

        // label style
        labelStyle: getMediumStyle(color: ColorManager.darkGrey),
        // error style
        errorStyle: getRegularStyle(color: ColorManager.error),

        // enabled border
        enabledBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: ColorManager.grey, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),

        // focused border
        focusedBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),

        // error border
        errorBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: ColorManager.error, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
        // focused error border
        focusedErrorBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
      ));
}