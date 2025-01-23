import 'package:flutter/material.dart';

ColorScheme lightColorScheme = const ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF6200EE), // Deep Purple
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFBB86FC),
  onPrimaryContainer: Color(0xFF3700B3),
  secondary: Color(0xFF03DAC6), // Teal
  onSecondary: Color(0xFF000000),
  secondaryContainer: Color(0xFFA7FFEB),
  onSecondaryContainer: Color(0xFF018786),
  tertiary: Color(0xFFFF0266), // Pink
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFFF80AB),
  onTertiaryContainer: Color(0xFFC51162),
  error: Color(0xFFB00020),
  onError: Color(0xFFFFFFFF),
  errorContainer: Color(0xFFCF6679),
  onErrorContainer: Color(0xFF370617),
  surface: Color(0xFFFFFFFF), // White background for surfaces
  onSurface: Color(0xFF000000),
  outline: Color(0xFF737373),
  shadow: Color(0xFF000000),
  inverseSurface: Color(0xFF303030), // Dark background for contrast
  onInverseSurface: Color(0xFFFFFFFF),
  inversePrimary: Color(0xFFBB86FC),
);

const ColorScheme darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFFBB86FC), // Light Purple
  onPrimary: Color(0xFF3700B3),
  primaryContainer: Color(0xFF6200EE), // Deep Purple
  onPrimaryContainer: Color(0xFFFFFFFF),
  secondary: Color(0xFFA7FFEB), // Light Teal
  onSecondary: Color(0xFF018786),
  secondaryContainer: Color(0xFF03DAC6), // Teal
  onSecondaryContainer: Color(0xFF000000),
  tertiary: Color(0xFFFF80AB), // Light Pink
  onTertiary: Color(0xFFC51162),
  tertiaryContainer: Color(0xFFFF0266), // Pink
  onTertiaryContainer: Color(0xFFFFFFFF),
  error: Color(0xFFCF6679),
  onError: Color(0xFF370617),
  errorContainer: Color(0xFFB00020),
  onErrorContainer: Color(0xFFFFFFFF),
  surface: Color(0xFF121212), // Dark background for surfaces
  onSurface: Color(0xFFFFFFFF),
  outline: Color(0xFF8D8D8D),
  shadow: Color(0xFF000000),
  inverseSurface: Color(0xFFFFFFFF),
  onInverseSurface: Color(0xFF303030),
  inversePrimary: Color(0xFF6200EE),
);
