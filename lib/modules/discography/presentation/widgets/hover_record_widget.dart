import 'package:flutter/material.dart';
import 'package:ruy_lopez_website/core/presentation/texts/custom_texts.dart';

class HoverRecordWidget extends StatelessWidget {
  final String buttonText;
  final String? recordTitle;
  const HoverRecordWidget({
    super.key,
    required this.buttonText,
    this.recordTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          CustomPaint(painter: _RecordWidgetPainter()),
          Positioned(
            bottom: 0,
            child: Column(
              children: [
                RobotoText(
                  text: recordTitle ?? '',
                  fontWeight: FontWeight.w400,
                  fontSize: 26,
                  color: Colors.white.withValues(alpha: 0.8),
                ),
                SizedBox(height: 30),
                DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                    border: Border(
                      top: BorderSide(color: Color(0xFFFFFFFF), width: 2),
                      left: BorderSide(color: Color(0xFFFFFFFF), width: 2),
                      right: BorderSide(color: Color(0xFFFFFFFF), width: 2),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 45,
                    ),
                    child: RobotoText(text: buttonText, fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _RecordWidgetPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = size.center(Offset(0, -size.height * 0.15));
    final centerPaint = Paint()..color = Color(0xFF4B4739);
    final centerFillPaint = Paint()..color = Color(0xFFFFD7F7);
    final innerCirclePaint = Paint()
      ..style = PaintingStyle.stroke
      ..color = Colors.black.withValues(alpha: 0.3)
      ..strokeWidth = 14;
    final outerCirclePaint = Paint()
      ..style = PaintingStyle.stroke
      ..color = Color(0xFF454545)
      ..strokeWidth = 4;

    final rrectPaint = Paint()
      ..blendMode = BlendMode.overlay
      ..color = Color(0xFFF213F8);

    final rrect = RRect.fromRectAndRadius(
      Rect.fromCenter(
        center: size.center(Offset(0, size.height * 0.175)),
        width: size.width,
        height: size.height * 0.65,
      ),
      Radius.circular(10),
    );

    canvas.drawCircle(center, (size.width * 0.25) - 7, centerFillPaint);
    canvas.drawCircle(center, size.width * 0.06, centerPaint);
    canvas.drawCircle(center, size.width * 0.25, innerCirclePaint);
    canvas.drawCircle(center, size.width * 0.32, outerCirclePaint);
    canvas.drawRRect(rrect, rrectPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
