import 'package:flutter/material.dart';

class CustomIndicatorDecoration extends Decoration {
  final Color color;
  final double borderRadius;

  const CustomIndicatorDecoration({
    required this.color,
    this.borderRadius = 8.0,
  });

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CustomIndicatorBoxPainter(
      color: color,
      borderRadius: borderRadius,
    );
  }
}

class _CustomIndicatorBoxPainter extends BoxPainter {
  final Color color;
  final double borderRadius;

  _CustomIndicatorBoxPainter({
    required this.color,
    required this.borderRadius,
  });

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final size = configuration.size;
    final rect = offset & size!;
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final path = Path()
      ..addRRect(
        RRect.fromRectAndRadius(rect, Radius.circular(borderRadius)),
      );
    canvas.drawPath(path, paint);
  }
}
