import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

class ImageView extends StatelessWidget {
  const ImageView({
    super.key,
    required this.context,
    required this.name,
  });

  final BuildContext context;
  final String name;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = AdaptiveTheme.of(context).mode.isDark;
    return Image.asset(
      'assets/images/$name',
      // height: 160,
      width: double.infinity,
      fit: BoxFit.contain,

      color: isDarkMode ? Colors.black12 : null,
      colorBlendMode: isDarkMode ? BlendMode.darken : null,
    );
  }
}
