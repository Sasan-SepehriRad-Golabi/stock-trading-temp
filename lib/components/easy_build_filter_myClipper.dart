import 'package:flutter/cupertino.dart';

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height);
    path.arcToPoint(const Offset(20, 0), radius: const Radius.circular(20));
    path.lineTo(size.width - 20, 0);
    path.arcToPoint(Offset(size.width, size.height),
        radius: const Radius.circular(20));
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
