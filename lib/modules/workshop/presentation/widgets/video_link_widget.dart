import 'package:flutter/material.dart';
import 'package:ruy_lopez_website/core/presentation/presentation.dart';
import 'package:ruy_lopez_website/core/utils/utils.dart';
import 'package:ruy_lopez_website/modules/workshop/domain/videos.dart';
import 'package:url_launcher/url_launcher.dart';

class VideoLinkWidget extends StatefulWidget {
  final Video video;
  const VideoLinkWidget({super.key, required this.video});

  @override
  State<VideoLinkWidget> createState() => _VideoLinkWidgetState();
}

class _VideoLinkWidgetState extends State<VideoLinkWidget> {
  bool _isHovering = false;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        MouseRegion(
          cursor: SystemMouseCursors.click,
          onEnter: (event) => setState(() {
            _isHovering = true;
          }),
          onExit: (event) => setState(() {
            _isHovering = false;
          }),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: GestureDetector(
              onTap: () async {
                if (screenWidth < mobileBreakPoint) {
                  setState(() {
                    _isHovering = true;
                  });
                  await Future.delayed(Durations.short2);
                }
                launchUrl(Uri.parse(widget.video.link));
                setState(() {
                  _isHovering = false;
                });
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: screenWidth < mobileBreakPoint
                        ? 283
                        : screenWidth * 0.2,
                    height: screenWidth < mobileBreakPoint
                        ? 212
                        : screenWidth * 0.15,
                    child: ClipRect(
                      child: AnimatedScale(
                        scale: _isHovering ? 1.2 : 1.0,
                        duration: Durations.long1,
                        child: DecoratedBox(
                          position: DecorationPosition.foreground,
                          decoration: BoxDecoration(
                            color: _isHovering
                                ? Color(0x997F4D7B)
                                : Colors.transparent,
                          ),
                          child: Image(
                            image: AssetImage(widget.video.imagePath),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.play_arrow_rounded,
                    color: Color(0xFFC7C4C4),
                    size: 64,
                    shadows: [
                      Shadow(
                        color: Colors.black.withValues(alpha: 0.75),
                        offset: Offset(4, 0),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 24),
        RobotoText(
          text: widget.video.title,
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Color(0xFF330833),
        ),
      ],
    );
  }
}
