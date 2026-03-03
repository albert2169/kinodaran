import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:kinodaran/presentation/kinodaran_main_screen/widgets/main_preview_slider.dart';

class MainPreviewSliderWidget extends StatelessWidget {
  final Function(int) onPageChange;
  final CarouselSliderController carouselSliderController;
  const MainPreviewSliderWidget(
      {super.key,
      required this.onPageChange,
      required this.carouselSliderController});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: MainPreviewSlider(
        onPageChange: onPageChange,
        carouselController: carouselSliderController,
      ),
    );
  }
}
