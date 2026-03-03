import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:kinodaran/constants/kinodaran_constants.dart';
import 'package:kinodaran/presentation/kinodaran_main_screen/widgets/bottom_navigation_bar.dart';
import 'package:kinodaran/presentation/kinodaran_main_screen/widgets/kinodaran_section.dart';
import 'package:kinodaran/presentation/kinodaran_main_screen/widgets/main_preview_slider_tabs.dart';
import 'package:kinodaran/presentation/kinodaran_main_screen/widgets/main_preview_slider_widget.dart';

class KinodaranMainScreen extends StatefulWidget {
  const KinodaranMainScreen({super.key});

  @override
  State<KinodaranMainScreen> createState() => _KinodaranMainScreenState();
}

class _KinodaranMainScreenState extends State<KinodaranMainScreen> {
  late CarouselSliderController _carouselSliderController;
  int _currentCarouselControllerIndex = 0;
  int _navigationBarTabCurrentIndex = 0;

  @override
  void initState() {
    super.initState();
    _carouselSliderController = CarouselSliderController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF020A12),
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: MainPreviewSliderWidget(
                  onPageChange: (index) {
                    setState(() {
                      _currentCarouselControllerIndex = index;
                    });
                  },
                  carouselSliderController: _carouselSliderController,
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(height: 10),
              ),
              SliverToBoxAdapter(
                child: MainPreviewSliderTabs(
                  currentIdx: _currentCarouselControllerIndex,
                ),
              ),
              for (final imageSectionModel in KinodaranConstants.imagesSection)
                KinodaranSection(imageSectionModel: imageSectionModel),
              SliverToBoxAdapter(
                child: SizedBox(height: 100),
              ),
            ],
          ),
          Positioned(
            left: 20,
            right: 20,
            bottom: 40,
            child: GlassBottomBar(
              currentIndex: _navigationBarTabCurrentIndex,
              onTabChange: (newTabValue) {
                setState(() {
                  _navigationBarTabCurrentIndex = newTabValue;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
