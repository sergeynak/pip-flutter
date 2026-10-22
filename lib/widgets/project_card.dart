import 'package:flutter/material.dart';

import '../data/demo_data.dart';
import '../models.dart';
import 'common_widgets.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key, required this.project, required this.data});
  final StudioProject project;
  final DemoData data;
  @override
  Widget build(BuildContext context) => Panel(
    padding: EdgeInsets.zero,
    // Подробная страница будет добавлена следующим этапом.
    onTap: null,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 205,
          child: Stack(
            fit: StackFit.expand,
            children: [
              ProjectArtwork(
                variant: project.visual,
                imageUrl: project.coverUrl,
                demo: data.isDemo,
              ),
              if (data.isDemo)
                const Positioned(left: 14, top: 14, child: ExampleTag()),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(19),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      project.category,
                      style: const TextStyle(
                        color: PipColors.muted,
                        fontSize: 11,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      project.title.resolve(contentLocale),
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        letterSpacing: -.4,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              const Icon(
                Icons.north_east_rounded,
                color: PipColors.muted,
                size: 21,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
