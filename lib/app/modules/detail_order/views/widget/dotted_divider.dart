import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:new_wewo/app/common/theme/layyuu_theme/color.dart' as color;

class DottedHorizontal extends CustomPainter {
  late Paint _paint;

  DottedHorizontal() {
    _paint = Paint();
    _paint.color = color.AppColors.neutralLight; //dots color
    _paint.strokeWidth = 1; //dots thickness
    _paint.strokeCap = StrokeCap.round; //dots corner edges
  }

  @override
  void paint(Canvas canvas, Size size) {
    for (double i = -150; i < 150; i = i + 10) {
      //Between of dots is 15
      if (i % 2 == 0) {
        canvas.drawLine(Offset(i, 0.0), Offset(i + 7, 0.0), _paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
