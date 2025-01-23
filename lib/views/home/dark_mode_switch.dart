import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/views/home/switch_icon.dart';

class DarkModeSwitch extends StatelessWidget {
  const DarkModeSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final isDarkMode = AdaptiveTheme.of(context).mode.isDark;
    return AnimatedToggleSwitch.dual(
      onChanged: (value) {
        if (value) {
          AdaptiveTheme.of(context).setDark();
        } else {
          AdaptiveTheme.of(context).setLight();
        }
      },
      current: isDarkMode,
      first: false,
      second: true,
      spacing: 8,
      height: 36,
      indicatorSize: const Size.square(32),
      style: ToggleStyle(
        // backgroundColor: colorScheme.primary,
        borderColor: colorScheme.outline,
      ),
      styleBuilder: (_) => ToggleStyle(
        indicatorColor: isDarkMode
            ? colorScheme.onPrimary
            : Theme.of(context).switchTheme.thumbColor?.resolve({}),
        backgroundColor: isDarkMode
            ? colorScheme.primary
            : colorScheme.surfaceContainerHighest,
      ),
      iconBuilder: (darkMode) {
        return SwitchIcon(context: context, darkMode: darkMode,);
      },
      textBuilder: (darkMode) {
        return SwitchIcon(context: context, darkMode: !darkMode,);
      },
    );
  }
}
