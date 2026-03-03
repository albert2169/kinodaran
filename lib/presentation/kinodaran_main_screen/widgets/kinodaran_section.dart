import 'package:flutter/material.dart';
import 'package:kinodaran/constants/kinodaran_constants.dart';
import 'package:kinodaran/models/image_section_model.dart';
import 'package:kinodaran/presentation/kinodaran_main_screen/widgets/episode_watch_indicator.dart';
import 'package:kinodaran/presentation/kinodaran_main_screen/widgets/play_button_widget.dart';
import 'package:kinodaran/presentation/kinodaran_main_screen/widgets/section_start_container.dart';

class KinodaranSection extends StatelessWidget {
  final ImageSectionModel imageSectionModel;
  const KinodaranSection({super.key, required this.imageSectionModel});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              spacing: 20,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SectionStartContainer(),
                Text(
                  imageSectionModel.sectionName,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: KinodaranConstants.imageheight + 23,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: imageSectionModel.images.length,
                itemBuilder: (context, index) {
                  final imageModel = imageSectionModel.images[index];
                  final imagePath = imageModel.path;
                  return Column(
                    children: [
                      Stack(alignment: AlignmentGeometry.center, children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: TweenAnimationBuilder<double>(
                            duration: const Duration(milliseconds: 300),
                            tween: Tween(begin: 0.9, end: 1.0),
                            builder: (context, value, child) {
                              return Transform.scale(
                                scale: value,
                                child: Container(
                                  width: KinodaranConstants.imageWidth,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 12,
                                        spreadRadius: 2,
                                        color: Colors.black.withAlpha(40),
                                        offset: const Offset(0, 6),
                                      )
                                    ],
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(16),
                                    child: Image.asset(
                                      imagePath,
                                      fit: BoxFit.cover,
                                      height: KinodaranConstants.imageheight,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        if (imageSectionModel.isForContinueWatching)
                          PlayButtonWidget(
                            size: KinodaranConstants.buttonSize,
                            onTap: () {},
                          ),
                      ]),
                      if (imageSectionModel.isForContinueWatching)
                        SizedBox(
                          width: KinodaranConstants.imageWidth,
                          child: FullWidthProgressIndicator(
                            value: imageModel.progress!,
                          ),
                        ),
                      SizedBox(
                        width: KinodaranConstants.imageWidth,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  imageModel.serialName,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 4),
                              if (imageSectionModel.isForContinueWatching)
                                Text(
                                  '${imageModel.episode}:${imageModel.seria}',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.end,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      )
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
