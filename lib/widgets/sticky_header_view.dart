import 'dart:ui';

import 'package:flutter/material.dart';

class StickyHeaderView extends StatelessWidget {
  const StickyHeaderView({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
        child: Container(
          height: 70.0,
          color: colorScheme.surface,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: textTheme.displaySmall?.copyWith(
              color: colorScheme.primary,
            ),
          ),
        ),
      ),
    );
  }
}
