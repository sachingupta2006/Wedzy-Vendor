import 'package:flutter/material.dart';

class CustomSliderComponentShape extends SliderComponentShape {
  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return const Size.fromRadius(
        16); // Customize the size of the value indicator
  }

  @override
  void paint(PaintingContext context, Offset center,
      {required Animation<double> activationAnimation,
      required Animation<double> enableAnimation,
      required bool isDiscrete,
      required TextPainter labelPainter,
      required RenderBox parentBox,
      required SliderThemeData sliderTheme,
      required TextDirection textDirection,
      required double value,
      required double textScaleFactor,
      required Size sizeWithOverflow}) {
    final Canvas canvas = context.canvas;

    final paint = Paint()
      ..color =
          sliderTheme.valueIndicatorColor!.withOpacity(enableAnimation.value)
      ..style = PaintingStyle.fill;

    final circleRadius = 16.0;
    final squareSize = 10.0;

    // Draw the circle
    canvas.drawCircle(center, circleRadius, paint);

    // Calculate the position of the square within the circle
    final squareTopLeft =
        Offset(center.dx - (squareSize / 2), center.dy - (squareSize / 2));
    final squareRect = Rect.fromLTWH(
        squareTopLeft.dx, squareTopLeft.dy, squareSize, squareSize);

    // Draw the square
    canvas.drawRect(squareRect, paint);
  }
}
