import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart' show AntDesign;

class Logo extends StatelessWidget {
  const Logo({
    super.key,
    required this.context,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Center(
        child: CircleAvatar(
          radius: 24,
          backgroundColor:
              Theme.of(context).colorScheme.surfaceContainerHighest,
          child: Icon(
            AntDesign.code_fill,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
    );
  }
}
