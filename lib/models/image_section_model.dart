import 'package:kinodaran/models/image_model.dart';

class ImageSectionModel {
  final String sectionName;
  final bool isForContinueWatching;
  final List<MovieModel> images;
  const ImageSectionModel({
    required this.sectionName,
    required this.isForContinueWatching,
    required this.images,
  });
}
