import 'package:flutter/material.dart';

class PurpleGrainyScreenDecoration extends StatelessWidget {
  final Widget child;
  final double height;
  const PurpleGrainyScreenDecoration({
    super.key,
    required this.child,
    this.height = 700,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentGeometry.center,
      children: [
        Positioned(
          top: 0,
          bottom: 0,
          left: 0,
          child: Opacity(
            opacity: 0.4,
            child: Image(
              image: AssetImage('assets/effects/purple_grainy_effect_l.png'),
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
              image: AssetImage('assets/effects/purple_grainy_effect_r.png'),
              fit: BoxFit.cover,
              colorBlendMode: BlendMode.multiply,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          height: 17,
          child: Image(
            image: AssetImage('assets/effects/grainy_purple_line_effect.png'),
            fit: BoxFit.cover,
          ),
        ),
        child,
      ],
    );
  }
}
