import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ruy_lopez_website/core/utils/utils.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialNetworkIcon extends StatefulWidget {
  final String link;
  final String iconPath;
  final String onHoverIconPath;
  const SocialNetworkIcon({
    super.key,
    required this.link,
    required this.iconPath,
    required this.onHoverIconPath,
  });

  @override
  State<SocialNetworkIcon> createState() => _SocialNetworkIconState();
}

class _SocialNetworkIconState extends State<SocialNetworkIcon> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final width = screenWidth < tabletBreakPoint
        ? screenWidth < mobileBreakPoint
              ? 54.0
              : 60.0
        : 80.0;
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          _isHovering = true;
        });
      },
      onExit: (event) {
        setState(() {
          _isHovering = false;
        });
      },
      child: GestureDetector(
        onTap: () {
          launchUrl(Uri.parse(widget.link));
        },
        child: ClipOval(
          child: Container(
            width: width,
            height: width,
            color: Color(0xFFFF74FB),
            child: Center(
              child: AnimatedCrossFade(
                firstChild: SvgPicture.asset(
                  widget.iconPath,
                  width: width * 0.6,
                  height: width * 0.6,
                ),
                secondChild: SvgPicture.asset(
                  widget.onHoverIconPath,
                  width: width * 0.6,
                  height: width * 0.6,
                ),
                crossFadeState: _isHovering
                    ? CrossFadeState.showSecond
                    : CrossFadeState.showFirst,
                duration: Durations.short4,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
