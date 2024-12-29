import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/theme/color_scheme.dart';
import 'package:portfolio/theme/text_theme.dart';

/// The [AppTheme] defines light and dark themes for the app.
///
/// Theme setup for FlexColorScheme package v8.
/// Use same major flex_color_scheme package version. If you use a
/// lower minor version, some properties may not be supported.
/// In that case, remove them after copying this theme to your
/// app or upgrade package to version 8.0.2.
///
/// Use in [MaterialApp] like this:
///
/// MaterialApp(
///  theme: AppTheme.light,
///  darkTheme: AppTheme.dark,
///  :
/// );
sealed class AppTheme {
  // The defined light theme.
  static ThemeData light = FlexThemeData.light(
    // colors: const FlexSchemeColor(
    //   // Custom colors
    //   primary: Color(0xFF006A60),
    //   primaryContainer: Color(0xFF4DB6AC),
    //   primaryLightRef: Color(0xFF006A60),
    //   secondary: Color(0xFF4C9AFF),
    //   secondaryContainer: Color(0xFF82CFFF),
    //   secondaryLightRef: Color(0xFF4C9AFF),
    //   tertiary: Color(0xFFFF6F61),
    //   tertiaryContainer: Color(0xFFFFAB91),
    //   tertiaryLightRef: Color(0xFFFF6F61),
    //   appBarColor: Color(0xFF82CFFF),
    //   error: Color(0xFFB3261E),
    //   errorContainer: Color(0xFFF9DEDC),
    // ),
    colorScheme: lightColorScheme,
    textTheme: lightTextTheme,
    subThemesData: const FlexSubThemesData(
      interactionEffects: true,
      tintedDisabledControls: true,
      useM2StyleDividerInM3: true,
      inputDecoratorIsFilled: true,
      inputDecoratorBorderType: FlexInputBorderType.outline,
      alignedDropdown: true,
      navigationRailUseIndicator: true,
      navigationRailLabelType: NavigationRailLabelType.all,
    ),
    keyColors: const FlexKeyColors(
      useSecondary: true,
      keepPrimary: true,
      keepSecondary: true,
      keepTertiary: true,
      keepPrimaryContainer: true,
      keepSecondaryContainer: true,
    ),
    appBarElevation: 0.5,
    typography: Typography.material2021(platform: defaultTargetPlatform),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    cupertinoOverrideTheme: const CupertinoThemeData(
        applyThemeToAll: true), // Dark text/icons on surface
  );
  // The defined dark theme.
  static ThemeData dark = FlexThemeData.dark(
    // colors: const FlexSchemeColor(
    //   // Custom colors
    //   primary: Color(0xFF4DB6AC),
    //   primaryContainer: Color(0xFF005045),
    //   primaryLightRef: Color(0xFF006A60),
    //   secondary: Color(0xFF82CFFF),
    //   secondaryContainer: Color(0xFF004B70),
    //   secondaryLightRef: Color(0xFF4C9AFF),
    //   tertiary: Color(0xFFFFAB91),
    //   tertiaryContainer: Color(0xFF7F423A),
    //   tertiaryLightRef: Color(0xFFFF6F61),
    //   appBarColor: Color(0xFF82CFFF),
    //   error: Color(0xFFF2B8B5),
    //   errorContainer: Color(0xFF8C1D18),
    // ),
    colorScheme: darkColorScheme,
    textTheme: darkTextTheme,
    subThemesData: const FlexSubThemesData(
      interactionEffects: true,
      tintedDisabledControls: true,
      blendOnColors: true,
      useM2StyleDividerInM3: true,
      inputDecoratorIsFilled: true,
      inputDecoratorBorderType: FlexInputBorderType.outline,
      alignedDropdown: true,
      navigationRailUseIndicator: true,
      navigationRailLabelType: NavigationRailLabelType.all,
    ),
    keyColors: const FlexKeyColors(
      useSecondary: true,
      keepPrimary: true,
      keepSecondary: true,
      keepTertiary: true,
      keepPrimaryContainer: true,
      keepSecondaryContainer: true,
    ),
    appBarElevation: 2,
    typography: Typography.material2021(platform: defaultTargetPlatform),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    cupertinoOverrideTheme: const CupertinoThemeData(applyThemeToAll: true),
  );
}
