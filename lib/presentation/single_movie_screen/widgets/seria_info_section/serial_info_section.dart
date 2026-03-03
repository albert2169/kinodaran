import 'package:flutter/material.dart';
import 'package:kinodaran/presentation/single_movie_screen/widgets/seria_info_section/widgets/info_container.dart';

class SerialInfoSection extends StatelessWidget {
  final String releaseDate;
  final double rating;
  final String seriaType;
  const SerialInfoSection({
    super.key,
    required this.releaseDate,
    required this.rating,
    required this.seriaType,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 6,
      children: [
        InfoContainer(text: '16+'),
        InfoContainer(text: 'FHD'),
        Icon(
          Icons.star,
          color: Color(0xFFF9EE11),
        ),
        Text(
          rating.toString(),
          style: TextStyle(
              color: Color(0xFFF9EE11),
              fontSize: 15,
              fontWeight: FontWeight.w600),
        ),
        Text(
          '•',
          style: TextStyle(
            color: Color.fromARGB(255, 190, 199, 217),
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          releaseDate,
          style: TextStyle(
            color: Color.fromARGB(255, 190, 199, 217),
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          '•',
          style: TextStyle(
            color: Color.fromARGB(255, 190, 199, 217),
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          seriaType,
          style: TextStyle(
            color: Color.fromARGB(255, 190, 199, 217),
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
