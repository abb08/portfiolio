import 'dart:ui';

import 'package:flutter/material.dart';

class StickyHeaderView extends StatelessWidget {
  const StickyHeaderView({super.key, required this.title});

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
          // color: colorScheme.surface,
          margin: const EdgeInsets.only(bottom: 2.0, top: 2.0),
          decoration: BoxDecoration(
            color: colorScheme.surface,
            boxShadow: [
              BoxShadow(
                color: colorScheme.shadow,
                offset: const Offset(0.0, 2.0), //(x,y)
                spreadRadius: 5,
                blurRadius: 0,
              ),
            ],
          ),

          // color: Colors.blueGrey[700]?.withOpacity(0.3),
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
