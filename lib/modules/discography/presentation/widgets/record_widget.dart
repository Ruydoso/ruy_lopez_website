import 'package:flutter/material.dart';
import 'package:ruy_lopez_website/core/presentation/presentation.dart';
import 'package:ruy_lopez_website/core/utils/breakpoints.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../domain/records.dart';

class RecordWidget extends StatefulWidget {
  final Records record;
  final Widget hover;
  const RecordWidget({super.key, required this.record, required this.hover});

  @override
  State<RecordWidget> createState() => _RecordWidgetState();
}

class _RecordWidgetState extends State<RecordWidget> {
  bool _isHovering = false;
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final size = width < mobileBreakPoint ? width * 0.9 : width * 0.25;
    return MouseRegion(
      onEnter: (event) => setState(() {
        _isHovering = true;
      }),
      onExit: (event) => setState(() {
        _isHovering = false;
      }),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () async {
          setState(() {
            _isHovering = false;
            _isPressed = true;
          });
          await Future.delayed(Durations.medium2);
          launchUrl(Uri.parse(widget.record.link));
          setState(() {
            _isPressed = false;
          });
        },
        child: AnimatedContainer(
          padding: _isHovering ? EdgeInsets.only(bottom: 4) : EdgeInsets.zero,
          duration: Durations.medium2,
          width: size,
          height: size,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            boxShadow: _isHovering
                ? [
                    BoxShadow(
                      color: Color(0xFFFF74FB),
                      spreadRadius: 4,
                      blurRadius: 10,
                    ),
                  ]
                : [],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Stack(
              fit: StackFit.expand,
              children: [
                DecoratedBox(
                  position: DecorationPosition.foreground,
                  decoration: BoxDecoration(
                    gradient: _isHovering
                        ? LinearGradient(
                            colors: [
                              Colors.transparent,
                              Colors.black.withValues(alpha: 0.15),
                              Colors.black.withValues(alpha: 0.8),
                            ],
                            stops: [0.0, 0.5, 0.9],
                            begin: AlignmentGeometry.topCenter,
                            end: AlignmentGeometry.bottomCenter,
                          )
                        : _isPressed
                        ? LinearGradient(
                            colors: [
                              Colors.transparent,
                              Colors.black.withValues(alpha: 0.15),
                              Colors.black.withValues(alpha: 0.27),
                              Colors.black.withValues(alpha: 0.8),
                            ],
                            stops: [0.0, 0.11, 0.19, 0.9],
                            begin: AlignmentGeometry.topCenter,
                            end: AlignmentGeometry.bottomCenter,
                          )
                        : null,
                  ),
                  child: SizedBox(
                    width: size,
                    child: Image(
                      image: AssetImage(widget.record.imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                if ((_isHovering || _isPressed) && width > mobileBreakPoint)
                  Positioned(
                    bottom: 32,
                    right: 36,
                    child: RobotoText(
                      text: 'See More',
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: _isPressed ? Color(0xFF7F4D7B) : Color(0xFFF0B3E7),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
