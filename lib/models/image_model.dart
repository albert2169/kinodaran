class ImageModel {
  final String path;
  final String serialName;
  final String? episode;
  final String? seria;
  final double? progress;
  const ImageModel({
    required this.path,
    required this.serialName,
    this.episode,
    this.seria,
    this.progress,
  });
}
