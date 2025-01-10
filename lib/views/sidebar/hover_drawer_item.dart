import 'package:flutter/material.dart';

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
                color: isHovered ? colorScheme.primary : colorScheme.onSurface,
                fontWeight: isHovered ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
