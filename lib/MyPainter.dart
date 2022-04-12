import 'package:flutter/material.dart';


class MyPainter extends CustomPainter { //         <-- CustomPainter class
 @override
void paint(Canvas canvas, Size size) {
  final path = Path()
    ..moveTo(10, 10)
    ..lineTo(10, 100)
    ..quadraticBezierTo(100, 10, 10, 100);
  final paint = Paint()
    ..color = Colors.black
    ..style = PaintingStyle.stroke
    ..strokeWidth = 4;
  canvas.drawPath(path, paint);
}

  @override
  bool shouldRepaint(CustomPainter old) {
    return false;
  }
}