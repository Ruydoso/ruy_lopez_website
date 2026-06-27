import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

class AnimatedTexts extends StatefulWidget {
  final Widget texts;
  const AnimatedTexts({super.key, required this.texts});

  @override
  State<AnimatedTexts> createState() => _AnimatedTextsState();
}

class _AnimatedTextsState extends State<AnimatedTexts> {
  bool visible = false;

  @override
  Widget build(BuildContext context) {
    final heigth = MediaQuery.of(context).size.height;
    double fraction = 0.4;
    if (heigth < 350) {
      fraction = 0.2;
    }

    return VisibilityDetector(
      key: Key('${widget.texts.hashCode}'),
      onVisibilityChanged: (info) {
        if (info.visibleFraction > fraction) {
          setState(() {
            visible = true;
          });
        }
      },
      child: AnimatedOpacity(
        duration: Durations.medium4,
        opacity: visible ? 1.0 : 0.0,
        child: widget.texts,
      ),
    );
  }
}
