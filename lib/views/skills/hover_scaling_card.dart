import 'package:flutter/material.dart';

class HoverScalingCard extends StatefulWidget {
  const HoverScalingCard({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  State<HoverScalingCard> createState() => _HoverScalingCardState();
}

class _HoverScalingCardState extends State<HoverScalingCard> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    final hovered = Matrix4.identity()..scale(1.05);

    return MouseRegion(
      onEnter: (_) => setState(() {
        _isHovering = true;
      }),
      onExit: (_) => setState(
        () {
          _isHovering = false;
        },
      ),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        transform: _isHovering ? hovered : Matrix4.identity(),
        decoration: BoxDecoration(
          color: _isHovering
              ? colorScheme.primaryContainer
              : colorScheme.secondaryContainer,
          borderRadius: BorderRadius.circular(12),
          boxShadow: _isHovering
              ? [
                  BoxShadow(
                    color: colorScheme.primary.withOpacity(0.4),
                    blurRadius: 12,
                    offset: const Offset(0, 6),
                  ),
                ]
              : [
                  BoxShadow(
                    color: colorScheme.shadow.withOpacity(0.2),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
        ),
        child: widget.child,
      ),
    );
  }
}
