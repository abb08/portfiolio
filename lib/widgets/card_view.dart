import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  final Widget child;
  final VoidCallback? onTap;

  const CardView({
    super.key,
    required this.child,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      elevation: 4,
      color: colorScheme.surface,
      // Define the shape of the card
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      // Define how the card's content should be clipped
      clipBehavior: Clip.antiAliasWithSaveLayer,
      // Define the child widget of the card
      child: InkWell(
        splashColor: colorScheme.primary.withAlpha(30),
        onTap: onTap,
        child: child,
      ),
    );
  }
}
