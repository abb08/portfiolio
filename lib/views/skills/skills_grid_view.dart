import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:portfolio/models/skills.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SkillsGridView extends StatelessWidget {
  SkillsGridView({super.key});

  final List<Skills> skills = [
    const Skills(
      name: 'Dart',
      brandIcon: Brands.dart,
    ),
    const Skills(
      name: 'Flutter',
      brandIcon: Brands.flutter,
    ),
    const Skills(
      name: 'Java',
      brandIcon: Brands.java,
    ),
    const Skills(
      name: 'Git',
      brandIcon: Brands.git,
    ),
    const Skills(
      name: 'Firebase',
      brandIcon: Brands.firebase,
    ),
    const Skills(
      name: 'VS Code',
      brandIcon: Brands.visual_studio_code_2019,
    ),
    const Skills(
      name: 'Android Studio',
      brandIcon: Brands.android_studio,
    ),
    const Skills(
      name: 'Android',
      brandIcon: Brands.android_os,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ResponsiveGridView.builder(
      itemCount: skills.length,
      shrinkWrap: true,
      gridDelegate: const ResponsiveGridDelegate(
        maxCrossAxisExtent: 100,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        // childAspectRatio: 1.37,
      ),
      // maxRowCount: 1,
      itemBuilder: (context, index) {
        return GridTile(
            child: Column(
          children: [
            Brand(
              skills[index].brandIcon,
              size: 45,
            ),
            Text(
              skills[index].name,
              softWrap: false,
              overflow: TextOverflow.visible,
            ),
          ],
        ));
      },
    );
  }
}
