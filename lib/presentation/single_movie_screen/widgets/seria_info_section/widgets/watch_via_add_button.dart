import 'package:flutter/material.dart';

class WatchViaAddButton extends StatelessWidget {
  const WatchViaAddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Color(0xFF17181F),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          'Դիտել գովազդով',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
