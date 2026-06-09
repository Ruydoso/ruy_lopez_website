import 'package:flutter/material.dart';

class TopGrainyBackgroundScreen extends StatelessWidget {
  final Widget child;
  const TopGrainyBackgroundScreen({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(width: double.infinity),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Opacity(
            opacity: 0.5,
            child: Image(
              image: AssetImage('assets/effects/top_grainy_effect.png'),
              fit: BoxFit.cover,
              colorBlendMode: BlendMode.overlay,
            ),
          ),
        ),
        child,
      ],
    );
  }
}
