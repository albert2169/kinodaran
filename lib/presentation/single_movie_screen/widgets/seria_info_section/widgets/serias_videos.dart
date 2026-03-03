import 'package:flutter/material.dart';
import 'package:kinodaran/constants/kinodaran_constants.dart';
import 'package:kinodaran/models/seria_model.dart';

class SeriasVideos extends StatelessWidget {
  final List<SeriaModel> seriaModels;
  const SeriasVideos({super.key, required this.seriaModels});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SizedBox(
        height: KinodaranConstants.imageheight + 23,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: seriaModels.length,
          itemBuilder: (context, index) {
            final seriaModel = seriaModels[index];
            final imagePath = seriaModel.imagePath;
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
                ]),
                SizedBox(
                  width: KinodaranConstants.imageWidth,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Seria ${index + 1}',
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
                          Text(
                            seriaModel.duration,
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
      ),
    );
  }
}
