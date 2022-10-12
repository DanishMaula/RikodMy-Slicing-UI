import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomBg extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // paint a curve that starts from the top left and ends at the bottom right
    final paint = Paint()
      ..color = const Color(0xff1C67B2)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;
    final path = Path();
    path.moveTo(0, 0.45 * size.height );
    path.quadraticBezierTo(size.width  , size.height / 2, size.width  , size.height / 9);
    path.lineTo(size.width , size.height);
    path.lineTo(0, size.height );
    
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class CustomCircle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {}

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
