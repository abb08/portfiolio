import 'package:flutter/material.dart';

@immutable
class Experience {
  final String date;
  final String jobTitle;
  final String companyName;
  final String jobDescription;
  final List<String> toolsUsed;
  final String link;

  const Experience({
    required this.date,
    required this.jobTitle,
    required this.companyName,
    required this.jobDescription,
    required this.toolsUsed,
    required this.link,
  });
}
