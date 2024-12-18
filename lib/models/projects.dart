import 'package:flutter/material.dart';

@immutable
class Projects {
  final String image;
  final String title;
  final String description;
  final List<String> builtWith;
  final String link;

  const Projects({
    required this.image,
    required this.title,
    required this.description,
    required this.builtWith,
    required this.link,
  });
}
