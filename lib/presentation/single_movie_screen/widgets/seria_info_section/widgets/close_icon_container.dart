import 'package:flutter/material.dart';

class CloseIconContainer extends StatelessWidget {
  final Function() onTap;
  const CloseIconContainer({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 58, 82, 100),
          shape: BoxShape.circle,
        ),
        child: const Icon(
          Icons.close,
          color: Colors.white,
          size: 30,
        ),
      ),
    );
  }
}
