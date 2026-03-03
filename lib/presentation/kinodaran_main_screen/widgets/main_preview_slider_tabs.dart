import 'package:flutter/material.dart';
import 'package:kinodaran/models/main_preview_images_enum.dart';

class MainPreviewSliderTabs extends StatelessWidget {
  final int currentIdx;
  const MainPreviewSliderTabs({super.key, required this.currentIdx});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 20,
      children: [
        for (int i = 0; i < MainPreviewImagesEnum.values.length; ++i)
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            margin: const EdgeInsets.symmetric(horizontal: 4),
            width: currentIdx == i ? 20 : 5,
            height: 5,
            decoration: BoxDecoration(
              color: currentIdx == i
                  ? const Color(0xFFF9EE11)
                  : const Color(0xFF9E9E9E),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
      ],
    );
  }
}
