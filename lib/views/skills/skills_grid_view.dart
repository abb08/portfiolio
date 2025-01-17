import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:portfolio/constants/skills.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SkillsGridView extends StatefulWidget {
  const SkillsGridView({super.key});

  @override
  State<SkillsGridView> createState() => _SkillsGridViewState();
}

class _SkillsGridViewState extends State<SkillsGridView> {
  // Track hover states for each card
  final Map<int, bool> _hovering = {};

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    final hovered = Matrix4.identity()..scale(1.05);

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
        final isHovering = _hovering[index] ?? false;
        return MouseRegion(
          onEnter: (_) => setState(() => _hovering[index] = true),
          onExit: (_) => setState(() => _hovering[index] = false),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            transform: isHovering ? hovered : Matrix4.identity(),
            decoration: BoxDecoration(
              color: isHovering
                  ? colorScheme.primaryContainer
                  : colorScheme.secondaryContainer,
              borderRadius: BorderRadius.circular(12),
              boxShadow: isHovering
                  ? [
                      BoxShadow(
                        color: colorScheme.primary.withOpacity(0.4),
                        blurRadius: 12,
                        offset: const Offset(0, 6),
                      ),
                    ]
                  : [
                      BoxShadow(
                        color: colorScheme.shadow.withOpacity(0.2),
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
            ),
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
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
