import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart' show Brand;
import 'package:portfolio/constants/skills.dart';
import 'package:portfolio/views/skills/hover_scaling_card.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SkillsGridView extends StatelessWidget {
  const SkillsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return ResponsiveGridView.builder(
      itemCount: skills.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const ResponsiveGridDelegate(
        maxCrossAxisExtent: 160,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 1,
      ),
      // maxRowCount: 1,
      itemBuilder: (context, index) {
        return HoverScalingCard(
          child: Card(
            color: colorScheme.surface,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            elevation: 4, // Subtle elevation for depth
            shadowColor: colorScheme.shadow.withOpacity(0.2), // Shadow color
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Brand(
                    skills[index].brandIcon,
                    size: 45,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    skills[index].name,
                    overflow: TextOverflow.visible,
                    style: textTheme.bodyLarge?.copyWith(
                        color: colorScheme.onSurface, // Text color
                        fontWeight: FontWeight.w500,
                        overflow: TextOverflow.visible),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
