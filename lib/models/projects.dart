import 'package:flutter/material.dart';

@immutable
class Projects {
  final Image image;
  final String title;
  final String description;
  final List<String> builtWith;

  const Projects({
    required this.image,
    required this.title,
    required this.description,
    required this.builtWith,
  });
}
