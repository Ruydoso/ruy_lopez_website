import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ruy_lopez_website/core/presentation/presentation.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../domain/news.dart';

class PressWidget extends StatefulWidget {
  final News news;
  const PressWidget({super.key, required this.news});

  @override
  State<PressWidget> createState() => _PressWidgetState();
}

class _PressWidgetState extends State<PressWidget> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (details) => setState(() => isHovering = true),
      onExit: (details) => setState(() => isHovering = false),
      child: GestureDetector(
        onTap: () {
          launchUrl(Uri.parse(widget.news.link));
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
            color: Color(0xFFFDF0F7),
            borderRadius: BorderRadius.circular(16),
            boxShadow: isHovering
                ? [
                    BoxShadow(
                      color: Color(0xFFF426FF),
                      blurRadius: 28,
                      spreadRadius: 3,
                    ),
                  ]
                : [],
          ),
          child: Column(
            children: [
              Stack(
                alignment: AlignmentGeometry.center,
                children: [
                  Opacity(
                    opacity: isHovering ? 0.4 : 1.0,
                    child: Image(
                      image: AssetImage(widget.news.assetPath),
                      fit: BoxFit.cover,
                    ),
                  ),
                  if (isHovering)
                    SvgPicture.asset(
                      'assets/icons/link.svg',
                      height: 60,
                      colorFilter: ColorFilter.mode(
                        Colors.white,
                        BlendMode.srcIn,
                      ),
                    ),
                ],
              ),
              Expanded(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: RobotoText(
                      text: widget.news.title,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF1E1B13),
                      fontSize: 16,
                      letterSpacing: 0,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          RobotoText(
                            text: '${widget.news.media} / ',
                            fontSize: 14,
                            fontStyle: FontStyle.italic,
                            color: Colors.black,
                          ),
                          RobotoText(
                            text: widget.news.date,
                            fontSize: 14,
                            fontStyle: FontStyle.italic,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Expanded(
                        child: ShaderMask(
                          blendMode: BlendMode.dstIn,
                          shaderCallback: (bounds) => LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.white,
                              Colors.white,
                              Colors.white.withValues(alpha: 0.0),
                            ],
                            stops: [0.0, 0.8, 1.0],
                          ).createShader(bounds),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: RobotoText(
                              maxLines: 4,
                              text: widget.news.corpus,
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              height: 1.18,
                              color: Color(0xFF201A1E),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
