import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HoverDrawerItem extends StatefulWidget {
  final String label;
  final VoidCallback onTap;
  const HoverDrawerItem({
    super.key,
    required this.label,
    required this.onTap,
  });

  @override
  State<HoverDrawerItem> createState() => _HoverDrawerItemState();
}

class _HoverDrawerItemState extends State<HoverDrawerItem> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final isSmallScreen = ResponsiveBreakpoints.of(context).smallerThan(TABLET);

    return MouseRegion(
      onEnter: (event) => setState(() => isHovered = true),
      onExit: (event) => setState(() => isHovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: ListTile(
          mouseCursor: SystemMouseCursors.click,
          title: Center(
            child: Text(
              widget.label,
              style: textTheme.bodyLarge?.copyWith(
                fontSize: isSmallScreen ? 24 : 18,
                color: isHovered ? colorScheme.primary : colorScheme.onSurface,
                fontWeight: isHovered ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal:
                isSmallScreen ? 24 : 12, // Adjust padding for small screens
            vertical: isSmallScreen ? 12 : 8,
          ),
          hoverColor: colorScheme.surfaceContainerHighest,
        ),
      ),
    );
  }
}
