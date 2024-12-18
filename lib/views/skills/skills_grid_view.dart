import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:portfolio/constants/skills.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SkillsGridView extends StatelessWidget {
  const SkillsGridView({super.key});

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
