import 'package:flutter/material.dart';
import 'package:kinodaran/models/image_model.dart';
import 'package:kinodaran/presentation/single_movie_screen/widgets/anons_video_section.dart';
import 'package:kinodaran/presentation/single_movie_screen/widgets/seria_info_section/serial_info_section.dart';
import 'package:kinodaran/presentation/single_movie_screen/widgets/seria_info_section/widgets/artists_list.dart';
import 'package:kinodaran/presentation/single_movie_screen/widgets/seria_info_section/widgets/close_icon_container.dart';
import 'package:kinodaran/presentation/single_movie_screen/widgets/seria_info_section/widgets/serias_videos.dart';
import 'package:kinodaran/presentation/single_movie_screen/widgets/seria_info_section/widgets/watch_via_add_button.dart';
import 'package:video_player/video_player.dart';

class SingleMovieScreen extends StatefulWidget {
  final MovieModel movieModel;
  const SingleMovieScreen({super.key, required this.movieModel});

  @override
  State<SingleMovieScreen> createState() => _SingleMovieScreenState();
}

class _SingleMovieScreenState extends State<SingleMovieScreen> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
      widget.movieModel.anonsVideoPath!,
    )..initialize().then((_) async {
        await _controller.setLooping(true);
        await _controller.play();

        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF020A12),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  AnonsVideoSection(controller: _controller),
                  Positioned(
                    top: 10,
                    right: 10,
                      child: CloseIconContainer(
                    onTap: () => Navigator.of(context).pop(),
                  ))
                ],
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  spacing: 10,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.movieModel.serialName,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SerialInfoSection(
                      rating: widget.movieModel.rating!,
                      releaseDate: widget.movieModel.releaseYear!,
                      seriaType: widget.movieModel.typeOfShow!,
                    ),
                    WatchViaAddButton(),
                    Text(
                      widget.movieModel.description!,
                      style: TextStyle(
                        color: Color.fromARGB(255, 190, 199, 217),
                      ),
                    ),
                    SeriasVideos(seriaModels: widget.movieModel.seriaModels),
                    ArtistsList(artistModels: widget.movieModel.artistsInfo)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
