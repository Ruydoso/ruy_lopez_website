import 'package:flutter/material.dart';

class FadeInFromTop extends StatefulWidget {
  final Widget child;
  final Duration duration;

  const FadeInFromTop({
    super.key,
    required this.child,
    this.duration = Durations.long4,
  });

  @override
  State<FadeInFromTop> createState() => _FadeInFromTopState();
}

class _FadeInFromTopState extends State<FadeInFromTop>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacity;
  late Animation<Offset> _offset;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: widget.duration);

    _opacity = CurvedAnimation(parent: _controller, curve: Curves.easeIn);

    _offset = Tween<Offset>(
      begin: const Offset(0.0, -10),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _opacity,
      child: SlideTransition(position: _offset, child: widget.child),
    );
  }
}
