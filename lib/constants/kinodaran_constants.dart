import 'package:kinodaran/models/artists_model.dart';
import 'package:kinodaran/models/image_model.dart';
import 'package:kinodaran/models/image_section_model.dart';
import 'package:kinodaran/models/seria_model.dart';

class KinodaranConstants {
  static const double buttonSize = 40;
  static const double imageWidth = 160;
  static const double imageheight = 100;

  static const List<ImageSectionModel> imagesSection = [
    ImageSectionModel(
      isForContinueWatching: true,
      sectionName: 'ՇԱՐՈՒՆԱԿԵԼ ԴԻՏՈՒՄԸ',
      images: [
        MovieModel(
          path: 'assets/images/continue_watch/image3.png',
          serialName: 'Դեպի ճամբար.հատուկ ջոկատ',
          episode: 'E1',
          seria: 'S3',
          progress: 10,
        ),
        MovieModel(
          path: 'assets/images/continue_watch/image5.png',
          serialName: 'Գերիները',
          episode: 'E2',
          seria: 'S5',
          progress: 50,
        ),
        MovieModel(
          path: 'assets/images/continue_watch/image2.png',
          serialName: 'Կորած փեսան',
          episode: 'E5',
          seria: 'S6',
          progress: 70,
        ),
        MovieModel(
          path: 'assets/images/continue_watch/image1.png',
          serialName: 'Տիկին նախարարը',
          episode: 'E1',
          seria: 'S3',
          progress: 90,
        ),
        MovieModel(
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
        MovieModel(
          rating: 9.2,
          releaseYear: '2026',
          typeOfShow: 'Ռեալիթի շոու',
          path: 'assets/images/recently_added/image1.png',
          serialName: 'Արտիստ Կոմեդյան',
          anonsVideoPath: 'assets/videos/video1.mp4',
          seriaModels: [
            SeriaModel(
                imagePath: 'assets/images/serias_images/image1.png',
                duration: '18:44'),
            SeriaModel(
                imagePath: 'assets/images/serias_images/image2.png',
                duration: '25:05'),
            SeriaModel(
                imagePath: 'assets/images/serias_images/image3.png',
                duration: '23:00'),
            SeriaModel(
                imagePath: 'assets/images/serias_images/image4.png',
                duration: '20:21'),
            SeriaModel(
                imagePath: 'assets/images/serias_images/image5.png',
                duration: '21:06'),
            SeriaModel(
                imagePath: 'assets/images/serias_images/image6.png',
                duration: '25:50'),
          ],
          artistsInfo: [
            ArtistsModel(
                imagePath: 'assets/images/artists/image1.png',
                name: 'Վարդան Հակոբյան',
                role: 'Ռեժիսոր'),
            ArtistsModel(
              imagePath: 'assets/images/artists/image2.png',
              name: 'Վահագն Դելո Ստեփանյան',
              role: 'Դերասան',
            ),
            ArtistsModel(
              imagePath: 'assets/images/artists/image3.png',
              name: 'Լևոն Սարգսյան',
              role: 'Դերասան',
            ),
            ArtistsModel(
              imagePath: 'assets/images/artists/image4.png',
              name: 'Նահապետ Խաչատրյան',
              role: 'Դերասան',
            ),
            ArtistsModel(
              imagePath: 'assets/images/artists/image5.png',
              name: 'Ֆելիքս Խաչատրյան',
              role: 'Դերասան',
            ),
            ArtistsModel(
              imagePath: 'assets/images/artists/image6.png',
              name: 'Նազիկ Սուքիասյան',
              role: 'Դերասան',
            ),
            ArtistsModel(
              imagePath: 'assets/images/artists/image7.png',
              name: 'Նարեկ Քրիստո Ստեփանյան',
              role: 'Դերասան',
            ),
            ArtistsModel(
              imagePath: 'assets/images/artists/image8.png',
              name: 'Էրիկ Գալստյան',
              role: 'Դերասան',
            ),
            ArtistsModel(
              imagePath: 'assets/images/artists/image9.png',
              name: 'Գրիգոր Դանիելյան',
              role: 'Դերասան',
            ),
            ArtistsModel(
              imagePath: 'assets/images/artists/image1.png',
              name: 'Վահագն Դելո Ստեփանյան',
              role: 'Պրոդյուսեր',
            ),
          ],
          description:
              'Դելոյի անկեղծ պատմությունը կախվածության, այն հաղթահարել փորձելու ու կյանքը փոխելու մասին: Տրանսֆորմացիա, որը կատարվելու է բոլորիս աչքի առաջ՝ դառնալով ոգեշնչող օրինակ:',
        ),
        MovieModel(
          path: 'assets/images/recently_added/image2.png',
          serialName: 'Էդո Հովսեփյան.Չեմպիոն',
        ),
        MovieModel(
          path: 'assets/images/recently_added/image3.png',
          serialName: 'Ձմեռվա երգ ',
        ),
        MovieModel(
          path: 'assets/images/recently_added/image4.png',
          serialName: 'Անին ու Դանին',
        ),
        MovieModel(
          path: 'assets/images/recently_added/image5.png',
          serialName: 'Վազգեն.վերջին Սպարապետը',
        ),
      ],
    ),
    ImageSectionModel(
      isForContinueWatching: false,
      sectionName: 'KINODARAN ՕՐԻԳԻՆԱԼ',
      images: [
        MovieModel(
          path: 'assets/images/kinodaran_original/image1.png',
          serialName: 'Ռաունդ',
        ),
        MovieModel(
          path: 'assets/images/kinodaran_original/image2.png',
          serialName: '11',
        ),
        MovieModel(
          path: 'assets/images/kinodaran_original/image3.png',
          serialName: 'Շախմատիստը',
        ),
        MovieModel(
          path: 'assets/images/kinodaran_original/image4.png',
          serialName: '84-ի ամառը',
        ),
        MovieModel(
          path: 'assets/images/kinodaran_original/image5.png',
          serialName: 'Սուրբը 2',
        ),
      ],
    ),
    ImageSectionModel(
      isForContinueWatching: false,
      sectionName: 'ԱՐՏԱՍԱՀՄԱՆՅԱՆ ՖԻԼՄԵՐ',
      images: [
        MovieModel(
          path: 'assets/images/foreign_films/image1.png',
          serialName: 'Պարինգթոնի արկածները 2',
        ),
        MovieModel(
          path: 'assets/images/foreign_films/image2.png',
          serialName: 'Ջեյն Էյր',
        ),
        MovieModel(
          path: 'assets/images/foreign_films/image3.png',
          serialName: 'Կոդ 8',
        ),
        MovieModel(
          path: 'assets/images/foreign_films/image4.png',
          serialName: 'Կոլիբրիի էֆեկտը',
        ),
        MovieModel(
          path: 'assets/images/foreign_films/image5.png',
          serialName: 'Պադինգթոնի արկածները',
        ),
      ],
    ),
    ImageSectionModel(
      isForContinueWatching: false,
      sectionName: 'ՌՈՄԱՆՏԻԿ ԿԱՏԱԿԵՐԳՈՒԹՅՈՒՆՆԵՐ',
      images: [
        MovieModel(
          path: 'assets/images/romantic_comedy/image1.png',
          serialName: 'Կորած մոլորվածը Հայաստանում',
        ),
        MovieModel(
          path: 'assets/images/romantic_comedy/image2.png',
          serialName: 'Պոկեր.am',
        ),
        MovieModel(
          path: 'assets/images/romantic_comedy/image3.png',
          serialName: 'Փախիր կամ ամուսնացիր',
        ),
        MovieModel(
          path: 'assets/images/romantic_comedy/image4.png',
          serialName: 'Հյուսիս-հարավ',
        ),
        MovieModel(
          path: 'assets/images/romantic_comedy/image5.png',
          serialName: 'Պահանջվում է միլիոնատեր',
        ),
      ],
    ),
  ];
}
