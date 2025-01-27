import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart' show AntDesign;

class AppBarTitle extends StatelessWidget {
  final ScrollController scrollController;

  const AppBarTitle({
    super.key,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: _scrollToTop,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              AntDesign.code_fill,
              color: colorScheme.primary,
            ),
            const SizedBox(width: 5),
            const Text('Portfolio'),
          ],
        ),
      ),
    );
  }

  void _scrollToTop() {
    scrollController.animateTo(0,
        duration: const Duration(milliseconds: 300), curve: Curves.linear);
  }
}
