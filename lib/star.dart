import 'package:flutter/material.dart';

class StarScreen extends StatelessWidget {
  const StarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Star')),
      body: CustomPaint(painter: StarPainter(), size: Size(120, 120)),
    );
  }
}

class StarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = Colors.yellow
          ..style = PaintingStyle.stroke
          ..strokeWidth = 2;

    final path = Path();

    path.moveTo(60, 10);
    path.lineTo(73, 50);
    path.lineTo(115, 50);
    path.lineTo(80, 75);
    path.lineTo(92, 115);
    path.lineTo(60, 90);
    path.lineTo(28, 115);
    path.lineTo(40, 75);
    path.lineTo(5, 50);
    path.lineTo(47, 50);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
