import 'package:kinodaran/models/image_model.dart';
import 'package:kinodaran/models/image_section_model.dart';

class KinodaranConstants {
  static const double buttonSize = 40;
  static const double imageWidth = 160;
  static const double imageheight = 100;

  static const List<ImageSectionModel> imagesSection = [
    ImageSectionModel(
      isForContinueWatching: true,
      sectionName: 'ՇԱՐՈՒՆԱԿԵԼ ԴԻՏՈՒՄԸ',
      images: [
        ImageModel(
          path: 'assets/images/continue_watch/image3.png',
          serialName: 'Դեպի ճամբար.հատուկ ջոկատ',
          episode: 'E1',
          seria: 'S3',
          progress: 10,
        ),
        ImageModel(
          path: 'assets/images/continue_watch/image5.png',
          serialName: 'Գերիները',
          episode: 'E2',
          seria: 'S5',
          progress: 50,
        ),
        ImageModel(
          path: 'assets/images/continue_watch/image2.png',
          serialName: 'Կորած փեսան',
          episode: 'E5',
          seria: 'S6',
          progress: 70,
        ),
        ImageModel(
          path: 'assets/images/continue_watch/image1.png',
          serialName: 'Տիկին նախարարը',
          episode: 'E1',
          seria: 'S3',
          progress: 90,
        ),
        ImageModel(
          path: 'assets/images/continue_watch/image4.png',
          serialName: 'Օջախի աղջիկ',
          episode: 'E1',
          seria: 'S3',
          progress: 40,
        ),
      ],
    ),
    ImageSectionModel(
      isForContinueWatching: false,
      sectionName: 'ՎԵՐՋԵՐՍ ԱՎԵԼԱՑՎԱԾ',
      images: [
        ImageModel(
          path: 'assets/images/recently_added/image1.png',
          serialName: 'Արտիստ Կոմեդյան',
        ),
        ImageModel(
          path: 'assets/images/recently_added/image2.png',
          serialName: 'Էդո Հովսեփյան.Չեմպիոն',
        ),
        ImageModel(
          path: 'assets/images/recently_added/image3.png',
          serialName: 'Ձմեռվա երգ ',
        ),
        ImageModel(
          path: 'assets/images/recently_added/image4.png',
          serialName: 'Անին ու Դանին',
        ),
        ImageModel(
          path: 'assets/images/recently_added/image5.png',
          serialName: 'Վազգեն.վերջին Սպարապետը',
        ),
      ],
    ),
    ImageSectionModel(
      isForContinueWatching: false,
      sectionName: 'KINODARAN ՕՐԻԳԻՆԱԼ',
      images: [
        ImageModel(
          path: 'assets/images/kinodaran_original/image1.png',
          serialName: 'Ռաունդ',
        ),
        ImageModel(
          path: 'assets/images/kinodaran_original/image2.png',
          serialName: '11',
        ),
        ImageModel(
          path: 'assets/images/kinodaran_original/image3.png',
          serialName: 'Շախմատիստը',
        ),
        ImageModel(
          path: 'assets/images/kinodaran_original/image4.png',
          serialName: '84-ի ամառը',
        ),
        ImageModel(
          path: 'assets/images/kinodaran_original/image5.png',
          serialName: 'Սուրբը 2',
        ),
      ],
    ),
    ImageSectionModel(
      isForContinueWatching: false,
      sectionName: 'ԱՐՏԱՍԱՀՄԱՆՅԱՆ ՖԻԼՄԵՐ',
      images: [
        ImageModel(
          path: 'assets/images/foreign_films/image1.png',
          serialName: 'Պարինգթոնի արկածները 2',
        ),
        ImageModel(
          path: 'assets/images/foreign_films/image2.png',
          serialName: 'Ջեյն Էյր',
        ),
        ImageModel(
          path: 'assets/images/foreign_films/image3.png',
          serialName: 'Կոդ 8',
        ),
        ImageModel(
          path: 'assets/images/foreign_films/image4.png',
          serialName: 'Կոլիբրիի էֆեկտը',
        ),
        ImageModel(
          path: 'assets/images/foreign_films/image5.png',
          serialName: 'Պադինգթոնի արկածները',
        ),
      ],
    ),
    ImageSectionModel(
      isForContinueWatching: false,
      sectionName: 'ՌՈՄԱՆՏԻԿ ԿԱՏԱԿԵՐԳՈՒԹՅՈՒՆՆԵՐ',
      images: [
        ImageModel(
          path: 'assets/images/romantic_comedy/image1.png',
          serialName: 'Կորած մոլորվածը Հայաստանում',
        ),
        ImageModel(
          path: 'assets/images/romantic_comedy/image2.png',
          serialName: 'Պոկեր.am',
        ),
        ImageModel(
          path: 'assets/images/romantic_comedy/image3.png',
          serialName: 'Փախիր կամ ամուսնացիր',
        ),
        ImageModel(
          path: 'assets/images/romantic_comedy/image4.png',
          serialName: 'Հյուսիս-հարավ',
        ),
        ImageModel(
          path: 'assets/images/romantic_comedy/image5.png',
          serialName: 'Պահանջվում է միլիոնատեր',
        ),
      ],
    ),
  ];
}
