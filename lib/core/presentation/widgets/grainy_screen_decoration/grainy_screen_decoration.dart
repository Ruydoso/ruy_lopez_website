import 'package:flutter/material.dart';

class GrainyBackgroundScreen extends StatelessWidget {
  final Widget child;
  const GrainyBackgroundScreen({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(width: double.infinity),
        Positioned(
          left: 0,
          top: 0,
          bottom: 0,
          child: Opacity(
            opacity: 0.4,
            child: Image(
              image: AssetImage('assets/effects/grainy_effect1.png'),
              fit: BoxFit.cover,
              colorBlendMode: BlendMode.multiply,
            ),
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          top: 0,
          child: Opacity(
            opacity: 0.4,
            child: Image(
              image: AssetImage('assets/effects/grainy_effect2.png'),
              fit: BoxFit.cover,
              colorBlendMode: BlendMode.multiply,
            ),
          ),
        ),
        child,
      ],
    );
  }
}
