import 'package:flutter/material.dart';
import 'package:passo_mobile_challenge/core/theme/app_colors.dart';
import 'package:passo_mobile_challenge/core/theme/app_text_styles.dart';

class ActivitySection extends StatelessWidget {
  const ActivitySection({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = AppTextStyles.textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Última Atividade',
              style: textTheme.titleSmall?.copyWith(
                color: Colors.white,
                fontSize: 13,
                height: 1.2,
              ),
            ),
            Text(
              'Hoje, 06:45',
              style: textTheme.labelSmall?.copyWith(
                color: AppColors.primary,
                fontSize: 9,
                height: 1.2,
                letterSpacing: 0,
              ),
            ),
          ],
        ),
        const SizedBox(height: 7),
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: SizedBox(
            height: 148,
            child: Stack(
              fit: StackFit.expand,
              children: [
                const CustomPaint(painter: MapPreviewPainter()),
                Positioned(
                  left: 9,
                  top: 9,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    decoration: BoxDecoration(
                      color: AppColors.surface.withValues(alpha: 0.94),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.directions_run,
                            color: Colors.white, size: 12),
                        const SizedBox(width: 4),
                        Text(
                          'Corrida Matinal',
                          style: textTheme.labelSmall?.copyWith(
                            color: Colors.white,
                            fontSize: 9,
                            height: 1,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 9,
                  bottom: 9,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 7, vertical: 4),
                    decoration: BoxDecoration(
                      color: const Color(0xE622302C),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      'Zona 3 · Aeróbico',
                      style: textTheme.labelSmall?.copyWith(
                        color: const Color(0xFF7FE3A6),
                        fontSize: 8,
                        height: 1,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class MapPreviewPainter extends CustomPainter {
  const MapPreviewPainter();

  @override
  void paint(Canvas canvas, Size size) {
    final bounds = Offset.zero & size;
    canvas.drawRect(bounds, Paint()..color = const Color(0xFFD8D9D0));

    final parkPaint = Paint()..color = const Color(0xFFB8CDB4);
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(size.width * 0.65, size.height * 0.12,
            size.width * 0.28, size.height * 0.29),
        const Radius.circular(10),
      ),
      parkPaint,
    );
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(size.width * 0.04, size.height * 0.70,
            size.width * 0.28, size.height * 0.22),
        const Radius.circular(9),
      ),
      parkPaint,
    );

    final minorRoad = Paint()
      ..color = const Color(0xFFF7F5EB)
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
    final majorRoadOutline = Paint()
      ..color = const Color(0xFFB5B8B2)
      ..strokeWidth = 8
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
    final majorRoad = Paint()
      ..color = const Color(0xFFF8F6ED)
      ..strokeWidth = 6
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final roads = <Path>[
      Path()
        ..moveTo(size.width * 0.04, size.height * 0.47)
        ..lineTo(size.width * 0.98, size.height * 0.29),
      Path()
        ..moveTo(size.width * 0.12, size.height * 0.98)
        ..lineTo(size.width * 0.83, size.height * 0.05),
      Path()
        ..moveTo(size.width * 0.02, size.height * 0.17)
        ..lineTo(size.width * 0.99, size.height * 0.78),
    ];

    for (final road in roads) {
      canvas.drawPath(road, majorRoadOutline);
      canvas.drawPath(road, majorRoad);
    }

    final minorRoads = <Path>[
      Path()
        ..moveTo(0, size.height * 0.08)
        ..lineTo(size.width, size.height * 0.61),
      Path()
        ..moveTo(0, size.height * 0.83)
        ..lineTo(size.width, size.height * 0.13),
      Path()
        ..moveTo(size.width * 0.32, 0)
        ..lineTo(size.width * 0.4, size.height),
      Path()
        ..moveTo(size.width * 0.56, 0)
        ..lineTo(size.width * 0.48, size.height),
      Path()
        ..moveTo(size.width * 0.88, 0)
        ..lineTo(size.width * 0.57, size.height),
      Path()
        ..moveTo(0, size.height * 0.65)
        ..lineTo(size.width, size.height * 0.94),
    ];
    for (final road in minorRoads) {
      canvas.drawPath(road, minorRoad);
    }

    final route = Path()
      ..moveTo(size.width * 0.19, size.height * 0.75)
      ..lineTo(size.width * 0.28, size.height * 0.57)
      ..lineTo(size.width * 0.25, size.height * 0.37)
      ..lineTo(size.width * 0.42, size.height * 0.26)
      ..lineTo(size.width * 0.55, size.height * 0.42)
      ..lineTo(size.width * 0.72, size.height * 0.38)
      ..lineTo(size.width * 0.79, size.height * 0.61)
      ..lineTo(size.width * 0.68, size.height * 0.78)
      ..lineTo(size.width * 0.49, size.height * 0.72)
      ..lineTo(size.width * 0.37, size.height * 0.83)
      ..lineTo(size.width * 0.19, size.height * 0.75);
    canvas.drawPath(
      route,
      Paint()
        ..color = Colors.white
        ..strokeWidth = 5
        ..style = PaintingStyle.stroke
        ..strokeJoin = StrokeJoin.round
        ..strokeCap = StrokeCap.round,
    );
    canvas.drawPath(
      route,
      Paint()
        ..color = const Color(0xFF168DFF)
        ..strokeWidth = 3
        ..style = PaintingStyle.stroke
        ..strokeJoin = StrokeJoin.round
        ..strokeCap = StrokeCap.round,
    );

    for (final point in [
      Offset(size.width * 0.19, size.height * 0.75),
      Offset(size.width * 0.55, size.height * 0.42),
    ]) {
      canvas.drawCircle(point, 5, Paint()..color = Colors.white);
      canvas.drawCircle(point, 3, Paint()..color = const Color(0xFF168DFF));
    }

    _drawMapLabel(canvas, 'SÃO PAULO', Offset(size.width * 0.51, size.height * 0.17));
    _drawMapLabel(canvas, 'PARQUE', Offset(size.width * 0.72, size.height * 0.25));
    _drawMapLabel(canvas, 'CENTRO', Offset(size.width * 0.19, size.height * 0.56));
    _drawMapLabel(canvas, 'AV. PAULISTA', Offset(size.width * 0.39, size.height * 0.91));
  }

  void _drawMapLabel(Canvas canvas, String label, Offset position) {
    final painter = TextPainter(
      text: TextSpan(
        text: label,
        style: const TextStyle(
          color: Color(0xFF65716B),
          fontSize: 7,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.3,
        ),
      ),
      textDirection: TextDirection.ltr,
    )..layout();
    painter.paint(canvas, position);
  }

  @override
  bool shouldRepaint(covariant MapPreviewPainter oldDelegate) => false;
}
