import 'package:flutter/material.dart';

class MyClipper extends CustomClipper<Path> {
  // trapezium clipper
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(10, size.height);
    path.lineTo(size.width - 10, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}