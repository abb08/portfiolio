import 'package:flutter/material.dart';

// ColorScheme lightColorScheme = const ColorScheme(
//   brightness: Brightness.light,
//   primary: Color(0xFF006A60), // Teal Green (Primary)
//   onPrimary: Color(0xFFFFFFFF), // White text/icons on primary
//   primaryContainer: Color(0xFF4DB6AC), // Light Teal for elevated surfaces
//   onPrimaryContainer: Color(0xFF00201C), // Dark text on light primary container

//   secondary: Color(0xFF4C9AFF), // Sky Blue (Secondary)
//   onSecondary: Color(0xFFFFFFFF), // White text/icons on secondary
//   secondaryContainer: Color(0xFF82CFFF), // Light Sky Blue for highlights
//   onSecondaryContainer:
//       Color(0xFF002D5A), // Dark text on light secondary container

//   tertiary: Color(0xFFFF6F61), // Coral (Tertiary)
//   onTertiary: Color(0xFFFFFFFF), // White text/icons on tertiary
//   tertiaryContainer: Color(0xFFFFAB91), // Light Coral for elevated surfaces
//   onTertiaryContainer:
//       Color(0xFF4B1C18), // Dark text on light tertiary container

//   error: Color(0xFFB3261E), // Red for errors
//   onError: Color(0xFFFFFFFF), // White text/icons on errors
//   errorContainer: Color(0xFFF9DEDC), // Light Red for error containers
//   onErrorContainer: Color(0xFF410E0B), // Dark text on error containers

//   // background: Color(0xFFF9FAFB), // Very Light Gray (Background)
//   // onBackground: Color(0xFF1C1B1F), // Dark text/icons on background
//   surface: Color(0xFFF9FAFB), // Pure White (Cards, Elevated surfaces)
//   onSurface: Color(0xFF1C1B1F), // Dark text/icons on surface

//   outline: Color(0xFF79747E), // Muted gray for outlines/borders
//   shadow: Color(0xFF000000), // Black for shadows
// );

// ColorScheme darkColorScheme = const ColorScheme(
//   brightness: Brightness.dark,
//   primary: Color(0xFF4DB6AC), // Light Teal Green (Primary)
//   onPrimary: Color(0xFF003731), // Dark text/icons on primary
//   primaryContainer: Color(0xFF005045), // Darker Teal for elevated surfaces
//   onPrimaryContainer: Color(0xFFA8E5DE), // Light text on primary container

//   secondary: Color(0xFF82CFFF), // Light Sky Blue (Secondary)
//   onSecondary: Color(0xFF00344C), // Dark text/icons on secondary
//   secondaryContainer: Color(0xFF004B70), // Darker Blue for elevated surfaces
//   onSecondaryContainer: Color(0xFFCDE7FF), // Light text on secondary container

//   tertiary: Color(0xFFFFAB91), // Light Coral (Tertiary)
//   onTertiary: Color(0xFF5A2D26), // Dark text/icons on tertiary
//   tertiaryContainer: Color(0xFF7F423A), // Darker Coral for elevated surfaces
//   onTertiaryContainer: Color(0xFFFFEDE8), // Light text on tertiary container

//   error: Color(0xFFF2B8B5), // Soft Red for errors
//   onError: Color(0xFF601410), // Dark text/icons on errors
//   errorContainer: Color(0xFF8C1D18), // Darker Red for error containers
//   onErrorContainer: Color(0xFFF2B8B5), // Light text on error containers

//   // background: Color(0xFF121212), // Dark Gray (Background)
//   // onBackground: Color(0xFFE1E1E1), // Light text/icons on background
//   surface: Color(0xFF121212), // Dark Gray (Cards, Elevated surfaces)
//   onSurface: Color(0xFFE1E1E1), // Light text/icons on surface

//   outline: Color(0xFF8E8E93), // Muted light gray for outlines/borders
//   shadow: Color(0xFF000000), // Black for shadows
// );

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
