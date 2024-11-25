import 'package:flutter/material.dart';

@immutable
class Skills {
  final String name;
  final Widget icon;

  const Skills({
    required this.name,
    required this.icon,
  });
}
