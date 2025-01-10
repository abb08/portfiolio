// import 'package:flutter/material.dart';

// class HoverAnimatedWidget extends StatefulWidget {
//   final Widget child;
//   final TextStyle? hoverTextStyle;
//   final TextStyle? defaultTextStyle;
//   final Color? defaultIconColor;
//   final Color? hoverIconColor;
//   final double scaleFactor;
//   final Duration duration;
//   final VoidCallback? onTap;

//   const HoverAnimatedWidget({
//     super.key,
//     required this.child,
//     this.hoverTextStyle,
//     this.defaultTextStyle,
//     this.defaultIconColor,
//     this.hoverIconColor,
//     this.scaleFactor = 1.2,
//     this.duration = const Duration(milliseconds: 200),
//     this.onTap,
//   });

//   @override
//   State<HoverAnimatedWidget> createState() => _HoverAnimatedWidgetState();
// }

// class _HoverAnimatedWidgetState extends State<HoverAnimatedWidget> {
//   bool _isHovered = false;

//   @override
//   Widget build(BuildContext context) {
//     return MouseRegion(
//       cursor: SystemMouseCursors.click,
//       onEnter: (_) => setState(() {
//         _isHovered = true;
//       }),
//       onExit: (_) => setState(() {
//         _isHovered = false;
//       }),
//       child: GestureDetector(
//         onTap: widget.onTap,
//         child: AnimatedScale(
//           scale: _isHovered ? widget.scaleFactor : 1.0,
//           duration: widget.duration,
//           child: IconTheme(
//             data: IconThemeData(
//               color:
//                   _isHovered ? widget.hoverIconColor : widget.defaultIconColor,
//             ),
//             child: DefaultTextStyle(
//               style: _isHovered
//                   ? (widget.hoverTextStyle ?? const TextStyle())
//                   : (widget.defaultTextStyle ?? const TextStyle()),
//               child: widget.child,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class HoverAnimatedWidget extends StatefulWidget {
  final Widget child;
  final TextStyle? hoverTextStyle;
  final TextStyle? defaultTextStyle;
  final Color? defaultIconColor;
  final Color? hoverIconColor;
  final double? scaleFactor;
  final Duration? duration;
  final VoidCallback? onTap;

  const HoverAnimatedWidget({
    super.key,
    required this.child,
    this.hoverTextStyle,
    this.defaultTextStyle,
    this.defaultIconColor,
    this.hoverIconColor,
    this.scaleFactor,
    this.duration,
    this.onTap,
  });

  @override
  State<HoverAnimatedWidget> createState() => _HoverAnimatedWidgetState();
}

class _HoverAnimatedWidgetState extends State<HoverAnimatedWidget> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    const double scaleFactor = 1.2;
    const Duration duration = Duration(milliseconds: 200);
    final TextStyle defaultTextStyle = textTheme.bodySmall?.copyWith(
          color: colorScheme.onSurface,
        ) ??
        const TextStyle();
    final TextStyle hoverTextStyle = textTheme.bodySmall?.copyWith(
          color: colorScheme.primary,
        ) ??
        const TextStyle();
    final Color defaultIconColor = colorScheme.onSurface;
    final Color hoverIconColor = colorScheme.primary;

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
          scale: _isHovered ? widget.scaleFactor ?? scaleFactor : 1.0,
          duration: widget.duration ?? duration,
          child: IconTheme(
            data: IconThemeData(
              color: _isHovered
                  ? widget.hoverIconColor ?? hoverIconColor
                  : widget.defaultIconColor ?? defaultIconColor,
            ),
            child: DefaultTextStyle(
              style: _isHovered
                  ? (widget.hoverTextStyle ?? hoverTextStyle)
                  : (widget.defaultTextStyle ?? defaultTextStyle),
              child: widget.child,
            ),
          ),
        ),
      ),
    );
  }
}
