import 'package:flutter/material.dart';

class FullWidthProgressIndicator extends StatelessWidget {
  final double value;
  final Color progressColor;
  final Color backgroundColor;
  final double height;

  const FullWidthProgressIndicator({
    super.key,
    required this.value,
    this.height = 3.5,
    this.progressColor = const Color(0xFFF9EE11),
    this.backgroundColor = Colors.black26,
  });

  @override
  Widget build(BuildContext context) {
    double fraction = (value.clamp(0, 100)) / 100;

    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: constraints.maxWidth,
          height: height,
          color: backgroundColor,
          child: Align(
            alignment: Alignment.centerLeft,
            child: FractionallySizedBox(
              widthFactor: fraction,
              heightFactor: 1.0,
              child: Container(
                decoration: BoxDecoration(
                  color: progressColor,
                  boxShadow: [
                    BoxShadow(
                      color: progressColor.withOpacity(0.4),
                      blurRadius: 6,
                      spreadRadius: 1,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
