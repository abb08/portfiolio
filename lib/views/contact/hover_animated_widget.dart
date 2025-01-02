import 'package:flutter/material.dart';

class HoverAnimatedWidget extends StatefulWidget {
  final Widget child;
  final TextStyle? hoverTextStyle;
  final TextStyle? defaultTextStyle;
  final Color? defaultIconColor;
  final Color? hoverIconColor;
  final double scaleFactor;
  final Duration duration;
  final VoidCallback? onTap;

  const HoverAnimatedWidget({
    super.key,
    required this.child,
    this.hoverTextStyle,
    this.defaultTextStyle,
    this.defaultIconColor,
    this.hoverIconColor,
    this.scaleFactor = 1.2,
    this.duration = const Duration(milliseconds: 200),
    this.onTap,
  });

  @override
  State<HoverAnimatedWidget> createState() => _HoverAnimatedWidgetState();
}

class _HoverAnimatedWidgetState extends State<HoverAnimatedWidget> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() {
        _isHovered = true;
      }),
      onExit: (_) => setState(() {
        _isHovered = false;
      }),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedScale(
          scale: _isHovered ? widget.scaleFactor : 1.0,
          duration: widget.duration,
          child: IconTheme(
            data: IconThemeData(
              color:
                  _isHovered ? widget.hoverIconColor : widget.defaultIconColor,
            ),
            child: DefaultTextStyle(
              style: _isHovered
                  ? (widget.hoverTextStyle ?? const TextStyle())
                  : (widget.defaultTextStyle ?? const TextStyle()),
              child: widget.child,
            ),
          ),
        ),
      ),
    );
  }
}
