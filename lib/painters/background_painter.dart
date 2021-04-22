import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BackgroundPainter extends CustomPainter{

  BackgroundPainter() : bluePaint = Paint()
  ..color = Color(0xe10c6fad)
  ..style = PaintingStyle.fill,
  lightpurplePaint = Paint()
    ..color = Color(0xe14f2ba3)
    ..style = PaintingStyle.fill;



  final Paint bluePaint;
  final Paint lightpurplePaint;

  @override
  void paint(Canvas canvas, Size size) {
    print(size);
    paintBlue(canvas, size);
  }

  void paintBlue(Canvas canvas, Size size){
    final path = Path();
    path.moveTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.close();

    canvas.drawPath(path, lightpurplePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}
