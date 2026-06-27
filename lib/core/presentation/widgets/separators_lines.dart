import 'package:flutter/material.dart';

class SeparatorsLines extends StatelessWidget {
  final bool invertedColors;
  final bool invertedWidths;
  const SeparatorsLines({
    super.key,
    this.invertedColors = false,
    this.invertedWidths = false,
  });

  @override
  Widget build(BuildContext context) {
    final gradient = LinearGradient(
      colors: [Color(0xFFC6C6C5), Color(0xFF696967), Color(0xFF1D1D1B)],
      stops: [0.0, 0.5, 1.0],
      begin: invertedColors
          ? AlignmentGeometry.centerRight
          : AlignmentGeometry.centerLeft,
      end: invertedColors
          ? AlignmentGeometry.centerLeft
          : AlignmentGeometry.centerRight,
    );

    final lines = [
      Container(
        height: 2.5,
        width: double.infinity,
        decoration: BoxDecoration(gradient: gradient),
      ),
      const SizedBox(height: 5),
      Container(
        height: 2.0,
        width: double.infinity,
        decoration: BoxDecoration(gradient: gradient),
      ),
      const SizedBox(height: 5),
      Container(
        height: 1.5,
        width: double.infinity,
        decoration: BoxDecoration(gradient: gradient),
      ),
      const SizedBox(height: 5),
      Container(
        height: 1.0,
        width: double.infinity,
        decoration: BoxDecoration(gradient: gradient),
      ),
      const SizedBox(height: 5),
      Container(
        height: 0.5,
        width: double.infinity,
        decoration: BoxDecoration(gradient: gradient),
      ),
    ];

    return SizedBox(
      width: double.infinity,
      child: Column(
        children: (invertedWidths ? lines.reversed : lines).toList(),
      ),
    );
  }
}
