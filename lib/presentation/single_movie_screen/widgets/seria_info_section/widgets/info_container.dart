import 'package:flutter/material.dart';

class InfoContainer extends StatelessWidget {
  final String text;
  const InfoContainer({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: BoxBorder.all(
            color: Color.fromARGB(255, 190, 199, 217),
        ),
      ),
      child: Padding(
        padding: EdgeInsetsGeometry.all(2),
        child: Text(
          text,
          style: TextStyle(
            color: Color.fromARGB(255, 190, 199, 217),
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
