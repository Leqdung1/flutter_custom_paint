import 'package:flutter/material.dart';

class HeartScreen extends StatelessWidget {
  const HeartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Heart')),
      body: CustomPaint(painter: HeartPainter(), size: Size(200, 200)),
    );
  }
}

class HeartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = Colors.green
          ..style = PaintingStyle.stroke
          ..strokeWidth = 6;

    Path path = Path();

    path.moveTo(size.width / 2, size.height);

    // Draw left side of heart
    path.cubicTo(
      size.width * 0.1,
      size.height * 0.6,
      size.width * 0.1,
      size.height * 0.2,
      size.width / 2,
      size.height * 0.4,
    );

    // Draw right side of heart
    path.cubicTo(
      size.width * 0.9,
      size.height * 0.2,
      size.width * 0.9,
      size.height * 0.6,
      size.width / 2,
      size.height,
    );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
