import 'package:flutter/material.dart';

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height);

    var firstNode = Offset(0, 0);

    var firstStart = Offset(size.width * 0.3, 0);
    path.quadraticBezierTo(
        firstNode.dx, firstStart.dy, firstStart.dx, firstStart.dy);
    var firstEnd = Offset(size.width * 0.5, size.height * 0.2);
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
    var secondStart = Offset(size.width * 0.5, size.height * 0.2);
    var secondEnd = Offset(size.width * 0.7, 0);
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    var endNode = Offset(size.width, 0);
    path.quadraticBezierTo(endNode.dx, endNode.dy, secondEnd.dx, secondEnd.dy);

    path.quadraticBezierTo(
        size.width * 0.3, 0, size.width * 0.5, size.height * 0.2);
    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0.2, size.width * 0.7, 0);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(MyCustomClipper oldClipper) => false;
}
