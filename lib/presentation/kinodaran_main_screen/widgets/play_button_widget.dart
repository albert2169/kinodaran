import 'package:flutter/material.dart';

class PlayButtonWidget extends StatelessWidget {
  final VoidCallback onTap;
  final double size;

  const PlayButtonWidget({
    super.key,
    required this.onTap,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black.withOpacity(0.6),
          border: Border.all(
            color: Colors.white.withOpacity(0.2),
            width: 2,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 10,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Center(
          child: Icon(
            Icons.play_arrow_rounded,
            color: const Color(0xFFF9EE11),
            size: size * 0.6,
          ),
        ),
      ),
    );
  }
}
