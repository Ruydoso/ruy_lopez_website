import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ruy_lopez_website/core/presentation/presentation.dart';
import 'package:ruy_lopez_website/core/utils/breakpoints.dart';
import 'package:url_launcher/url_launcher.dart';

class AudiovisualPoster extends StatefulWidget {
  final String assetPath;
  final String url;
  const AudiovisualPoster({
    super.key,
    required this.assetPath,
    required this.url,
  });

  @override
  State<AudiovisualPoster> createState() => _AudiovisualPosterState();
}

class _AudiovisualPosterState extends State<AudiovisualPoster> {
  bool isHovering = false;
  bool isHoveringCenter = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final width = screenWidth < litleMobileBreakPoint
        ? screenWidth * 0.9
        : screenWidth < mobileBreakPoint
        ? 360.0
        : screenWidth < tabletBreakPoint
        ? 360.0
        : screenWidth * 0.28;
    final heigth = screenWidth < mobileBreakPoint ? 480.0 : width * 1.32;
    return MouseRegion(
      onEnter: (event) => setState(() => isHovering = true),
      onExit: (event) => setState(() => isHovering = false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => launchUrl(Uri.parse(widget.url)),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: width,
              height: heigth,
              decoration: BoxDecoration(
                color: Color(0xFFF7EBF1),
                borderRadius: BorderRadius.circular(28),
              ),
              child: Column(
                children: [
                  AnimatedContainer(
                    duration: Duration(milliseconds: 400),
                    padding: isHovering
                        ? EdgeInsets.only(bottom: 15)
                        : EdgeInsets.all(15),
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(28),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: isHovering
                              ? Color(0x997F4D7B)
                              : Colors.transparent,
                        ),
                        position: DecorationPosition.foreground,
                        child: Image(
                          image: AssetImage(widget.assetPath),
                          fit: BoxFit.cover,
                          height: heigth * 0.85,
                          width: screenWidth < mobileBreakPoint
                              ? screenWidth
                              : width,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: Container(
                          padding: const EdgeInsets.only(bottom: 2),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                width: 1.5,
                                color: isHovering
                                    ? Color(0xFF653662)
                                    : Colors.transparent,
                              ),
                            ),
                          ),
                          child: RobotoText(
                            text: 'See the trailer on Youtube',
                            fontSize: 14,
                            color: Color(0xFF653662),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Visibility(
              visible: isHovering,
              child: MouseRegion(
                onEnter: (event) => setState(() {
                  isHoveringCenter = true;
                }),
                onExit: (event) => setState(() {
                  isHoveringCenter = false;
                }),
                child: Container(
                  width: 76,
                  height: 76,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFF74FB),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      isHoveringCenter
                          ? 'assets/icons/icon_play_pressed.svg'
                          : 'assets/icons/icon_play.svg',
                      colorFilter: ColorFilter.mode(
                        Color(0xFF653662),
                        BlendMode.srcIn,
                      ),
                      height: 24,
                      width: 24,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
