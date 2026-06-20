import 'package:flutter/material.dart';
import 'package:ruy_lopez_website/core/utils/breakpoints.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../domain/records.dart';

class RecordWidget extends StatefulWidget {
  final Records record;
  const RecordWidget({super.key, required this.record});

  @override
  State<RecordWidget> createState() => _RecordWidgetState();
}

class _RecordWidgetState extends State<RecordWidget> {
  bool _isHovering = false;

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
        onTap: () {
          launchUrl(Uri.parse(widget.record.link));
        },
        child: Container(
          width: size,
          height: size,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: AnimatedCrossFade(
              duration: Durations.long1,
              crossFadeState: _isHovering
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
              firstChild: SizedBox(
                width: size,
                child: Image(
                  image: AssetImage(widget.record.imagePath),
                  fit: BoxFit.cover,
                ),
              ),
              secondChild: SizedBox(
                width: size,
                child: Image(
                  image: AssetImage(widget.record.hoverImagePath),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
