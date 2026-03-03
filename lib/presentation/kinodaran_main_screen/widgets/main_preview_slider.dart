import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kinodaran/models/main_preview_images_enum.dart';

class MainPreviewSlider extends StatelessWidget {
  final CarouselSliderController carouselController;
  final Function(int) onPageChange;
  const MainPreviewSlider(
      {super.key,
      required this.carouselController,
      required this.onPageChange});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: _imageAiSlider(),
      options: CarouselOptions(
        onPageChanged: (index, _) {
          onPageChange(index);
        },
        aspectRatio: 3,
        viewportFraction: 1.0,
        enlargeCenterPage: true,
        height: double.infinity,
      ),
      carouselController: carouselController,
    );
  }

  List<ClipRRect> _imageAiSlider() {
    return MainPreviewImagesEnum.values.map((memoryImageInfo) {
      return ClipRRect(
        child: Column(
          children: [
            Expanded(
              child: Image.asset(
                memoryImageInfo.localPath,
                fit: BoxFit.fitWidth,
                width: double.infinity,
              ),
            ),
          ],
        ),
      );
    }).toList();
  }
}
