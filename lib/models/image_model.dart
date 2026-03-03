import 'package:kinodaran/models/artists_model.dart';
import 'package:kinodaran/models/seria_model.dart';

class MovieModel {
  final String path;
  final String serialName;
  final String? episode;
  final String? seria;
  final double? progress;
  final double? rating;
  final String? typeOfShow;
  final String? releaseYear;
  final String? description;
  final List<SeriaModel> seriaModels;
  final List<ArtistsModel> artistsInfo;
  final String? anonsVideoPath;
  const MovieModel({
    required this.path,
    required this.serialName,
    this.anonsVideoPath,
    this.seriaModels = const [],
    this.artistsInfo = const [],
    this.description,
    this.rating,
    this.typeOfShow,
    this.releaseYear,
    this.episode,
    this.seria,
    this.progress,
  });
}
