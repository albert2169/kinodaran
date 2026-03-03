import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class AnonsVideoSection extends StatelessWidget {
  final VideoPlayerController controller;
  const AnonsVideoSection({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      height: screenHeight / 3,
      width: double.infinity,
      child: controller.value.isInitialized
          ? Stack(
              alignment: Alignment.center,
              children: [
                SizedBox.expand(
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: SizedBox(
                      width: controller.value.size.width,
                      height: controller.value.size.height,
                      child: VideoPlayer(
                        controller,
                      ),
                    ),
                  ),
                ),
                // GestureDetector(
                //   onTap: () {
                //     setState(() {
                //       _controller.value.isPlaying
                //           ? _controller.pause()
                //           : _controller.play();
                //     });
                //   },
                //   child: Container(
                //     decoration: BoxDecoration(
                //       color: Colors.black.withOpacity(0.5),
                //       shape: BoxShape.circle,
                //     ),
                //     padding: const EdgeInsets.all(16),
                //     child: Icon(
                //       _controller.value.isPlaying
                //           ? Icons.pause
                //           : Icons.play_arrow,
                //       color: Colors.white,
                //       size: 40,
                //     ),
                //   ),
                // ),
              ],
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
