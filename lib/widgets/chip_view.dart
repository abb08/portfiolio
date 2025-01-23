import 'package:flutter/material.dart';

class ChipView extends StatelessWidget {
  const ChipView({
    super.key,
    required this.length,
    required this.labelText,
  });

  final int length;
  final List<String> labelText;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Wrap(
      spacing: 8.0, // Horizontal spacing between chips
      runSpacing: 4.0, // Vertical spacing between chip rows
      children: List<Widget>.generate(
        length,
        (chipIndex) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Chip(
              backgroundColor: colorScheme.primaryContainer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              label: Text(
                labelText[chipIndex],
                style: textTheme.bodySmall?.copyWith(
                  color: colorScheme.onPrimaryContainer,
                ),
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}
