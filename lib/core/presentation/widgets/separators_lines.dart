import 'package:flutter/material.dart';

class SeparatorsLines extends StatelessWidget {
  const SeparatorsLines({super.key});

  @override
  Widget build(BuildContext context) {
    final gradient = LinearGradient(
      colors: [Color(0xFFC6C6C5), Color(0xFF696967), Color(0xFF1D1D1B)],
      stops: [0.0, 0.5, 1.0],
      begin: AlignmentGeometry.centerLeft,
      end: AlignmentGeometry.centerRight,
    );
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
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
        ],
      ),
    );
  }
}
