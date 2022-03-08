import 'package:flutter/material.dart';

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    // Path number 1

    paint.color = const Color(0xff1C2235);
    path = Path();
    path.lineTo(0, 0);
    path.cubicTo(0, 0, 0, size.height * 0.38, 0, size.height * 0.38);
    path.cubicTo(0, size.height * 0.38, size.width, size.height * 0.38,
        size.width, size.height * 0.38);
    path.cubicTo(size.width, size.height * 0.38, size.width, size.height * 0.32,
        size.width, size.height * 0.32);
    path.cubicTo(size.width, size.height * 0.32, size.width * 0.73,
        size.height * 0.43, size.width * 0.51, size.height * 0.18);
    path.cubicTo(size.width * 0.42, size.height * 0.07, size.width * 0.32,
        size.height * 0.01, size.width / 5, 0);
    path.cubicTo(size.width / 5, 0, size.width / 5, 0, size.width * 0.19, 0);
    path.cubicTo(
        size.width * 0.19, 0, size.width * 0.19, 0, size.width * 0.19, 0);
    path.cubicTo(
        size.width * 0.19, 0, size.width * 0.19, 0, size.width * 0.19, 0);
    path.cubicTo(
        size.width * 0.18, 0, size.width * 0.18, 0, size.width * 0.18, 0);
    path.cubicTo(size.width * 0.18, 0, 0, 0, 0, 0);
    path.cubicTo(0, 0, 0, 0, 0, 0);
    canvas.drawPath(path, paint);

    // Path number 2

    paint.color = const Color(0xff1C2235);
    path = Path();
    path.lineTo(0, size.height * 0.38);
    path.cubicTo(0, size.height * 0.38, size.width, size.height * 0.38,
        size.width, size.height * 0.38);
    path.cubicTo(size.width, size.height * 0.38, size.width, size.height * 1.38,
        size.width, size.height * 1.38);
    path.cubicTo(size.width, size.height * 1.38, 0, size.height * 1.38, 0,
        size.height * 1.38);
    path.cubicTo(
        0, size.height * 1.38, 0, size.height * 0.38, 0, size.height * 0.38);
    path.cubicTo(
        0, size.height * 0.38, 0, size.height * 0.38, 0, size.height * 0.38);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
