import 'package:flutter/material.dart';

class SwitchIcon extends StatelessWidget {
  const SwitchIcon({
    super.key,
    required this.context,
    required this.darkMode,
  });

  final BuildContext context;
  final bool darkMode;

  @override
  Widget build(BuildContext context) {
    if (darkMode) {
      return Icon(
        Icons.mode_night_outlined,
        color: Theme.of(context).colorScheme.inverseSurface,
      );
    }
    return Icon(
      Icons.wb_sunny_outlined,
      color: Theme.of(context).colorScheme.onInverseSurface,
    );
  }
}
